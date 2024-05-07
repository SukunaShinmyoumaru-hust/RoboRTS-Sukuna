#include "grbl.h"

const float eps = 1e-7;
const float circle_turn_dis_threshold = 0.1;  //in meters
const float max_turn_theta = M_PI * 5 / 6;
const float min_turn_theta = M_PI / 6;

//两个向量（vec1_x, vec1_y）和（vec2_x, vec2_y）的小于180度夹角的绝对值
float Grbl::get_angle(float vec1_x, float vec1_y, float vec2_x, float vec2_y) {
    float angle1 = atan2(vec1_y, vec1_x);
    float angle2 = atan2(vec2_y, vec2_x);
    float angle = angle2 - angle1;
    if(angle < - M_PI) angle += 2 * M_PI;
    if(angle > M_PI) angle -= 2 * M_PI;
    return angle;
}

//传入数据单位为米
void Grbl::cal_center(float x1, float y1, float x2, float y2, float x3, float y3, float &in_x, float &in_y, float &out_x, float &out_y, float &center_x, float &center_y, float &radius){
    float x2x1 = x1 - x2, y2y1 = y1 - y2;
    assert(fabs(x2x1) > eps || fabs(y2y1) > eps);
    float vec1_length = sqrt(x2x1 * x2x1 + y2y1 * y2y1);
    x2x1 /= vec1_length, y2y1 /= vec1_length; //将第一个向量归一化

    float x2x3 = x3 - x2, y2y3 = y3 - y2;
    assert(fabs(x2x3) > eps || fabs(y2y3) > eps);
    float vec2_length = sqrt(x2x3 * x2x3 + y2y3 * y2y3);
    x2x3 /= vec2_length, y2y3 /= vec2_length; //第二个向量归一化
    
    float vec_center_x = x2x1 + x2x3, vec_center_y = y2y1 + y2y3;  //求角平分线
    assert(fabs(vec_center_x) > eps || fabs(vec_center_y) > eps);

    float theta = fabs(get_angle(x2x1, y2y1, x2x3, y2y3)); //求夹角
    assert(theta > min_turn_theta && theta < max_turn_theta); //角度不能太大
    radius = circle_turn_dis_threshold * sin(theta / 2) / (1 - sin(theta / 2)); //计算半径

    float turn_center_dis = circle_turn_dis_threshold + radius;
    float vec_length = sqrt(vec_center_x * vec_center_x + vec_center_y * vec_center_y); //角平分线向量长度
    center_x = x2 + vec_center_x * turn_center_dis / vec_length; //求圆心
    center_y = y2 + vec_center_y * turn_center_dis / vec_length;

    float turn_in_dis = (circle_turn_dis_threshold + radius) * cos(theta / 2); //计算拐点到切点的距离
    if(turn_in_dis < min(vec1_length / 2, vec2_length / 2)) { //切点超过线段一半
        in_x = x2 + (x2x1 * turn_in_dis), in_y = y2 + (y2y1 * turn_in_dis); //计算入点坐标
        out_x = x2 + (x2x3 * turn_in_dis), out_y = y2 + (y2y3 * turn_in_dis);
    }else{
        turn_in_dis = min(vec1_length / 2, vec2_length / 2); //保证切点不会超过直线段的一半位置
        turn_center_dis = turn_in_dis / cos(theta / 2);
        radius = turn_center_dis * sin(theta / 2);
        center_x = x2 + vec_center_x * turn_center_dis / vec_length; //求圆心
        center_y = y2 + vec_center_y * turn_center_dis / vec_length;
        in_x = x2 + (x2x1 * turn_in_dis), in_y = y2 + (y2y1 * turn_in_dis); //计算入点坐标
        out_x = x2 + (x2x3 * turn_in_dis), out_y = y2 + (y2y3 * turn_in_dis);
    }
  // printf("Input x1 : %f y1:%f x2:%f y2:%f x3:%f y3:%f\nOutput:In point:%f %f Out point:%f %f radius center: %f %f radius:%f\n",x1,y1,x2,y2,x3,y3,in_x,in_y,out_x,out_y,center_x,center_y,radius);
}

void Grbl::check_struct(){

  for(int i = 0;i < start_buffer_tail;i++){
    printf("steps %d:from %f %f,move to %f %f\n",i,start_buffer[i].last_target[0],start_buffer[i].last_target[1],
    start_buffer[i].last_target[0]+start_buffer[i].forwards[0],start_buffer[i].last_target[1]+start_buffer[i].forwards[1]);
  }
  
  for(int i = 0;i < block_buffer_head;i++){
    printf("steps %d:from %f %f,move to %f %f,entry_velocity is %f,milimeter is %f\n",i,block_buffer[i].last_target[0],block_buffer[i].last_target[1],
    block_buffer[i].last_target[0]+block_buffer[i].steps[0],block_buffer[i].last_target[1]+block_buffer[i].steps[1],
    sqrt(block_buffer[i].entry_speed_sqr),block_buffer[i].millimeters);
  }
  
}

void Grbl::add_path(){
    pl.position[0] = start_buffer[0].last_target[0];
    pl.position[1] = start_buffer[0].last_target[1];
    float x1,x2,y1,y2,ans_x,ans_y;
    for(int i = 0;i < start_buffer_tail - 1;i++){
      if(C){
      cal_center(start_buffer[i].last_target[0] / 1000,
                 start_buffer[i].last_target[1] / 1000,
                 start_buffer[i+1].last_target[0] / 1000,
                 start_buffer[i+1].last_target[1] / 1000,
                 (start_buffer[i+1].last_target[0] + start_buffer[i+1].forwards[0]) / 1000,
                 (start_buffer[i+1].last_target[1] + start_buffer[i+1].forwards[1]) / 1000,
                 x1,
                 y1,
                 x2,
                 y2,
                 ans_x,
                 ans_y,
                 radius_
      );
      end_position_[0] = x1 * 1000;end_position_[1] = y1 * 1000;
      plan_buffer_line(end_position_,0,0,0);
      start_position_[0] = x1 * 1000;start_position_[1] = y1 * 1000;
      end_position_[0] = x2 * 1000;end_position_[1] = y2 * 1000;
      offset_[0] = (ans_x - x1) * 1000;
      offset_[1] = (ans_y - y1) * 1000; 
      if((get_angle(x1 - ans_x, y1 - ans_y, x2 - ans_x, y2 - ans_y) > 0)) mc_arc(start_position_,end_position_,offset_,radius_ * 1000,0,0,0,1,0,0);
      else{
        mc_arc(start_position_,end_position_,offset_,radius_ * 1000,0,0,0,1,0,1);
      }
      }
      else{
        end_position_[0] = start_buffer[i+1].last_target[0]; end_position_[1] = start_buffer[i+1].last_target[1];
        printf("move to %f %f\n",end_position_[0],end_position_[1]);
        plan_buffer_line(end_position_,0,0,0);
      }
    }
    end_position_[0] = start_buffer[start_buffer_tail - 1].last_target[0] + start_buffer[start_buffer_tail - 1].forwards[0];
    end_position_[1] = start_buffer[start_buffer_tail - 1].last_target[1] + start_buffer[start_buffer_tail - 1].forwards[1];
    plan_buffer_line(end_position_,0,0,0);
    planner_recalculate();
}
Grbl::Grbl(){
  settings.arc_tolerance = 0.5;
  settings.steps_per_mm[0] = 1;
  settings.steps_per_mm[1] = 1;
  settings.junction_deviation = 20;
  settings.max_rate[0] = 1000;
  settings.max_rate[1] = 1000;
  settings.acceleration[0] = 60;
  settings.acceleration[1] = 60;
}
/*
    function mc_arc
    @param:
        position == current xyz
        target == target xyz, 
        offset == offset from current xyz
        radius == the radius of the circle
        axis_0 == first axis
        axis_1 == second axis
        arc_tolerance == the length of the segment

*/
void Grbl::mc_arc(float *position, float *target, float *offset, float radius, float feed_rate,
    int invert_feed_rate, int axis_0, int axis_1, int axis_linear, int is_clockwise_arc)
{
  float center_axis0 = position[axis_0] + offset[axis_0];
  float center_axis1 = position[axis_1] + offset[axis_1];
  float r_axis0 = -offset[axis_0];  // Radius vector from center to current location
  float r_axis1 = -offset[axis_1];
  float rt_axis0 = target[axis_0] - center_axis0;
  float rt_axis1 = target[axis_1] - center_axis1;
  
  // CCW angle between position and target from circle center. Only one atan2() trig computation required.
  float angular_travel = atan2(r_axis0*rt_axis1-r_axis1*rt_axis0, r_axis0*rt_axis0+r_axis1*rt_axis1);
  
  if (is_clockwise_arc) { // Correct atan2 output per direction
    if (angular_travel >= -ARC_ANGULAR_TRAVEL_EPSILON) { angular_travel -= 2*M_PI; }
  } else {
    if (angular_travel <= ARC_ANGULAR_TRAVEL_EPSILON) { angular_travel += 2*M_PI; }
  }
  
  int segments = floor(fabs(0.5*angular_travel*radius)/
                          sqrt(settings.arc_tolerance*(2*radius - settings.arc_tolerance)) );
  
  if (segments) { 

    if (invert_feed_rate) { feed_rate *= segments; }
   
    float theta_per_segment = angular_travel/segments;
    float linear_per_segment = (target[axis_linear] - position[axis_linear])/segments;

    float cos_T = 2.0 - theta_per_segment*theta_per_segment;
    float sin_T = theta_per_segment*0.16666667*(cos_T + 4.0);
    cos_T *= 0.5;

    float sin_Ti;
    float cos_Ti;
    float r_axisi;
    int i;
    int count = 0;
  
    for (i = 1; i<segments; i++) { // Increment (segments-1).
      
      if (count < N_ARC_CORRECTION) {
        // Apply vector rotation matrix. ~40 usec
        r_axisi = r_axis0*sin_T + r_axis1*cos_T;
        r_axis0 = r_axis0*cos_T - r_axis1*sin_T;
        r_axis1 = r_axisi;
        count++;
      } else {      
        // Arc correction to radius vector. Computed only every N_ARC_CORRECTION increments. ~375 usec
        // Compute exact location by applying transformation matrix from initial radius vector(=-offset).
        cos_Ti = cos(i*theta_per_segment);
        sin_Ti = sin(i*theta_per_segment);
        r_axis0 = -offset[axis_0]*cos_Ti + offset[axis_1]*sin_Ti;
        r_axis1 = -offset[axis_0]*sin_Ti - offset[axis_1]*cos_Ti;
        count = 0;
      }
  
      // Update arc_target location
      position[axis_0] = center_axis0 + r_axis0;
      position[axis_1] = center_axis1 + r_axis1;
      position[axis_linear] += linear_per_segment;
      
      plan_buffer_line(position, feed_rate, invert_feed_rate,1);
    
      // Bail mid-circle on system abort. Runtime command check already performed by mc_line.
      // if (sys.abort) { return; }
    }
  }
  // Ensure last segment arrives at target location.
  plan_buffer_line(target, feed_rate, invert_feed_rate,1);
}

// Returns the index of the next block in the ring buffer. Also called by stepper segment buffer.
int Grbl::plan_next_block_index(int block_index) 
{
  block_index++;
  if (block_index == BLOCK_BUFFER_SIZE) { block_index = 0; }
  return(block_index);
}


// Returns the index of the previous block in the ring buffer
int Grbl::plan_prev_block_index(int block_index) 
{
  if (block_index == 0) { block_index = BLOCK_BUFFER_SIZE; }
  block_index--;
  return(block_index);
}

void Grbl::plan_buffer_line(float *target, float feed_rate, int invert_feed_rate,int circle) {
  // Prepare and initialize new block
  PlanBlock *block = &block_buffer[block_buffer_head];
  block->step_event_count = 0;
  block->millimeters = 0;
  block->direction_bits = 0;
  block->acceleration = SOME_LARGE_VALUE; // Scaled down to maximum acceleration later

  // Compute and store initial move distance data.
  // TODO: After this for-loop, we don't touch the stepper algorithm data. Might be a good idea
  // to try to keep these types of things completely separate from the planner for portability.
  int32_t target_steps[N_AXIS];
  float unit_vec[N_AXIS], delta_mm;
  int idx;

  for (idx=0; idx<N_AXIS; idx++) {
    // Calculate target position in absolute steps, number of steps for each axis, and determine max step events.
    // Also, compute individual axes distance for move and prep unit vector calculations.
    // NOTE: Computes true distance from converted step values.
    block->last_target[idx] = pl.position[idx];
    target_steps[idx] = lround(target[idx]*settings.steps_per_mm[idx]);
    block->steps[idx] = target_steps[idx]-pl.position[idx];
    block->step_event_count = max(block->step_event_count, abs(block->steps[idx]));
    delta_mm = (target_steps[idx] - pl.position[idx])/settings.steps_per_mm[idx];
    unit_vec[idx] = delta_mm; // Store unit vector numerator. Denominator computed later.
    
    // Incrementally compute total move distance by Euclidean norm. First add square of each term.
    block->millimeters += delta_mm*delta_mm;
  }
  block->millimeters = sqrt(block->millimeters); // Complete millimeters calculation with sqrt()
  
  // Bail if this is a zero-length block. Highly unlikely to occur.
  if (block->step_event_count == 0) { return; } 
  
  // Adjust feed_rate value to mm/min depending on type of rate input (normal, inverse time, or rapids)
  // TODO: Need to distinguish a rapids vs feed move for overrides. Some flag of some sort.
  if (feed_rate < 0) { feed_rate = SOME_LARGE_VALUE; } // Scaled down to absolute max/rapids rate later
  else if (invert_feed_rate) { feed_rate *= block->millimeters; }
  if (feed_rate < MINIMUM_FEED_RATE) { feed_rate = MINIMUM_FEED_RATE; } // Prevents step generation round-off condition.

  // Calculate the unit vector of the line move and the block maximum feed rate and acceleration scaled 
  // down such that no individual axes maximum values are exceeded with respect to the line direction. 
  // NOTE: This calculation assumes all axes are orthogonal (Cartesian) and works with ABC-axes,
  // if they are also orthogonal/independent. Operates on the absolute value of the unit vector.
  float inverse_unit_vec_value;
  float inverse_millimeters = 1.0/block->millimeters;  // Inverse millimeters to remove multiple float divides	
  float junction_cos_theta = 0;
  for (idx=0; idx<N_AXIS; idx++) {
    if (unit_vec[idx] != 0) {  // Avoid divide by zero.
      unit_vec[idx] *= inverse_millimeters;  // Complete unit vector calculation
      inverse_unit_vec_value = fabs(1.0/unit_vec[idx]); // Inverse to remove multiple float divides.

      // Check and limit feed rate against max individual axis velocities and accelerations
      // feed_rate = min(feed_rate,settings.max_rate[idx]*inverse_unit_vec_value);
      // block->acceleration = min(block->acceleration,settings.acceleration[idx]*inverse_unit_vec_value);

      // Incrementally compute cosine of angle between previous and current path. Cos(theta) of the junction
      // between the current move and the previous move is simply the dot product of the two unit vectors, 
      // where prev_unit_vec is negative. Used later to compute maximum junction speed.
      junction_cos_theta -= pl.previous_unit_vec[idx] * unit_vec[idx];
    }
  }
  feed_rate = normal_velocity;

  //do some correction
  junction_cos_theta = (junction_cos_theta + 1) * 0.8 + junction_cos_theta;

  block->acceleration = normal_accelaration;

  // TODO: Need to check this method handling zero junction speeds when starting from rest.
  if (block_buffer_head == block_buffer_tail) {
  
    // Initialize block entry speed as zero. Assume it will be starting from rest. Planner will correct this later.
    block->entry_speed_sqr = now_velocity;
    block->max_junction_speed_sqr = 0.0; // Starting from rest. Enforce start from zero velocity.
  
  } else {
    /* 
       Compute maximum allowable entry speed at junction by centripetal acceleration approximation.
       Let a circle be tangent to both previous and current path line segments, where the junction 
       deviation is defined as the distance from the junction to the closest edge of the circle, 
       colinear with the circle center. The circular segment joining the two paths represents the 
       path of centripetal acceleration. Solve for max velocity based on max acceleration about the
       radius of the circle, defined indirectly by junction deviation. This may be also viewed as 
       path width or max_jerk in the previous Grbl version. This approach does not actually deviate 
       from path, but used as a robust way to compute cornering speeds, as it takes into account the
       nonlinearities of both the junction angle and junction velocity.

       NOTE: If the junction deviation value is finite, Grbl executes the motions in an exact path 
       mode (G61). If the junction deviation value is zero, Grbl will execute the motion in an exact
       stop mode (G61.1) manner. In the future, if continuous mode (G64) is desired, the math here
       is exactly the same. Instead of motioning all the way to junction point, the machine will
       just follow the arc circle defined here. The Arduino doesn't have the CPU cycles to perform
       a continuous mode path, but ARM-based microcontrollers most certainly do. 
       
       NOTE: The max junction speed is a fixed value, since machine acceleration limits cannot be
       changed dynamically during operation nor can the line move geometry. This must be kept in
       memory in the event of a feedrate override changing the nominal speeds of blocks, which can 
       change the overall maximum entry speed conditions of all blocks.
    */
    // NOTE: Computed without any expensive trig, sin() or acos(), by trig half angle identity of cos(theta).
    if (junction_cos_theta > 0.999999) {
      //  For a 0 degree acute junction, just set minimum junction speed. 
      block->max_junction_speed_sqr = MINIMUM_JUNCTION_SPEED*MINIMUM_JUNCTION_SPEED;
    } else {
      junction_cos_theta = max(junction_cos_theta,-0.999999f); // Check for numerical round-off to avoid divide by zero.
      float sin_theta_d2 = sqrt(0.5*(1.0-junction_cos_theta)); // Trig half angle identity. Always positive.

      // TODO: Technically, the acceleration used in calculation needs to be limited by the minimum of the
      // two junctions. However, this shouldn't be a significant problem except in extreme circumstances.
      block->max_junction_speed_sqr = max( MINIMUM_JUNCTION_SPEED*MINIMUM_JUNCTION_SPEED,
                                   (block->acceleration * settings.junction_deviation * sin_theta_d2)/(1.0-sin_theta_d2) * 1.5);

    }

  }


  // Store block nominal speed
  block->nominal_speed_sqr = feed_rate*feed_rate; // (mm/min). Always > 0
  
  // Compute the junction maximum entry based on the minimum of the junction speed and neighboring nominal speeds.
  block->max_entry_speed_sqr = min(block->max_junction_speed_sqr, 
                                   min(block->nominal_speed_sqr,pl.previous_nominal_speed_sqr));
  
  // Update previous path unit_vector and nominal speed (squared)
  memcpy(pl.previous_unit_vec, unit_vec, sizeof(unit_vec)); // pl.previous_unit_vec[] = unit_vec[]
  pl.previous_nominal_speed_sqr = block->nominal_speed_sqr;
    
  // Update planner position
  memcpy(pl.position, target_steps, sizeof(target_steps)); // pl.position[] = target_steps[]

  // New block is all set. Update buffer head and next buffer head indices.
  block_buffer_head = next_buffer_head;  
  next_buffer_head = plan_next_block_index(block_buffer_head);
  
  // Finish up by recalculating the plan with the new block.
  planner_recalculate();
}

void Grbl::plan_reset() 
{
  memset(&pl, 0, sizeof(Planner));
  memset(&block_buffer, 0, sizeof(block_buffer)); 
  memset(&start_buffer, 0, sizeof(start_buffer));
  block_buffer_tail = 0;
  block_buffer_head = 0; // Empty = tail
  next_buffer_head = 1; // plan_next_block_index(block_buffer_head)
  block_buffer_planned = 0; // = block_buffer_tail;
  start_buffer_tail = 0;
}

void Grbl::planner_recalculate() 
{   
  // Initialize block index to the last block in the planner buffer.
  int block_index = plan_prev_block_index(block_buffer_head);
        
  // Bail. Can't do anything with one only one plan-able block.
  if (block_index == block_buffer_planned) { return; }
      
  // Reverse Pass: Coarsely maximize all possible deceleration curves back-planning from the last
  // block in buffer. Cease planning when the last optimal planned or tail pointer is reached.
  // NOTE: Forward pass will later refine and correct the reverse pass to create an optimal plan.
  float entry_speed_sqr;
  PlanBlock *next;
  PlanBlock *current = &block_buffer[block_index];

  // Calculate maximum entry speed for last block in buffer, where the exit speed is always zero.
  current->entry_speed_sqr = min( current->max_entry_speed_sqr, 2*current->acceleration*current->millimeters);
  
  block_index = plan_prev_block_index(block_index);
  if (block_index == block_buffer_planned) { // Only two plannable blocks in buffer. Reverse pass complete.
    // Check if the first block is the tail. If so, notify stepper to update its current parameters.
    // if (block_index == block_buffer_tail) { st_update_plan_block_parameters(); }
  } else { // Three or more plan-able blocks
    while (block_index != block_buffer_planned) { 
      next = current;
      current = &block_buffer[block_index];
      block_index = plan_prev_block_index(block_index);

      // Check if next block is the tail block(=planned block). If so, update current stepper parameters.
      // if (block_index == block_buffer_tail) { st_update_plan_block_parameters(); } 

      // Compute maximum entry speed decelerating over the current block from its exit speed.
      if (current->entry_speed_sqr != current->max_entry_speed_sqr) {
        entry_speed_sqr = next->entry_speed_sqr + 2*current->acceleration*current->millimeters;
        if (entry_speed_sqr < current->max_entry_speed_sqr) {
          current->entry_speed_sqr = entry_speed_sqr;
        } else {
          current->entry_speed_sqr = current->max_entry_speed_sqr;
        }
      }
    }
  }    

  // Forward Pass: Forward plan the acceleration curve from the planned pointer onward.
  // Also scans for optimal plan breakpoints and appropriately updates the planned pointer.
  next = &block_buffer[block_buffer_planned]; // Begin at buffer planned pointer
  block_index = plan_next_block_index(block_buffer_planned); 
  while (block_index != block_buffer_head) {
    current = next;
    next = &block_buffer[block_index];
    
    // Any acceleration detected in the forward pass automatically moves the optimal planned
    // pointer forward, since everything before this is all optimal. In other words, nothing
    // can improve the plan from the buffer tail to the planned pointer by logic.
    if (current->entry_speed_sqr < next->entry_speed_sqr) {
      entry_speed_sqr = current->entry_speed_sqr + 2*current->acceleration*current->millimeters;
      // If true, current block is full-acceleration and we can move the planned pointer forward.
      if (entry_speed_sqr < next->entry_speed_sqr) {
        next->entry_speed_sqr = entry_speed_sqr; // Always <= max_entry_speed_sqr. Backward pass sets this.
        block_buffer_planned = block_index; // Set optimal plan pointer.
      }
    }
    
    // Any block set at its maximum entry speed also creates an optimal plan up to this
    // point in the buffer. When the plan is bracketed by either the beginning of the
    // buffer and a maximum entry speed or two maximum entry speeds, every block in between
    // cannot logically be further improved. Hence, we don't have to recompute them anymore.
    if (next->entry_speed_sqr == next->max_entry_speed_sqr) { block_buffer_planned = block_index; }
    block_index = plan_next_block_index( block_index );
  } 
}