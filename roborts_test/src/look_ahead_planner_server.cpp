#include "look_ahead_planner_server.h"
#include "grbl.h"

using roborts_common::NodeState;
static bool judgeCross(float x1,float y1,float x2,float y2){
    return (abs(x1 - x2) > 20 && abs(y1 - y2) > 20);
}
static bool judgeTurn(float x1,float y1,float x2,float y2,float x3,float y3){
    bool turn_left = abs(x1 - x2) < 20 && abs(y1 - y2) > 20 && abs(x3 - x2) > 20 && abs(y3 - y2) < 20;
    bool turn_right = abs(x1 - x2) > 20 && abs(y1 - y2) < 20 && abs(x3 - x2) < 20 && abs(y3 - y2) > 20;
    return turn_left || turn_right;
}
static bool judgenogo(float x1,float y1,float x2,float y2){
    return (abs(x1 - x2) < 20 || abs(y1 - y2) < 20);
}

void LookAheadPlannerServer::SetNodeState(NodeState node_state){
  std::lock_guard<std::mutex> node_state_lock(node_state_mtx_);
  node_state_ = node_state;
}

NodeState LookAheadPlannerServer::GetNodeState(){
  std::lock_guard<std::mutex> node_state_lock(node_state_mtx_);
  return node_state_;
}

LookAheadPlannerServer::LookAheadPlannerServer()
{   
    tf_ptr_ = std::make_shared<tf::TransformListener>(ros::Duration(10));
    std::string map_path = ros::package::getPath("roborts_costmap") + "/config/costmap_parameter_config_for_global_plan.prototxt";
    costmap_ptr_ = std::make_shared<roborts_costmap::CostmapInterface>("global_costmap",
                                                                           *tf_ptr_,
                                                                           map_path.c_str());
    //ast = std::make_shared<roborts_global_planner::AStarPlanner>(costmap_ptr_);
    ast = roborts_common::AlgorithmFactory<roborts_global_planner::GlobalPlannerBase, CostmapPtr >::CreateAlgorithm("a_star_planner", costmap_ptr_);
    if (ast == nullptr) {
      ROS_ERROR("global planner algorithm instance can't be loaded");
    }
    SetNodeState(NodeState::PAUSE);
    ROS_INFO("create costmap_ptr success");
    last_speed.linear.x = 0;
    last_speed.linear.y = 0;
    last_speed.angular.z = 0;
    last_acc.accel.linear.x = 0;
    last_acc.accel.linear.y = 0;
    last_acc.accel.angular.z = 0;
    yaw = 0;
    grbl.now_velocity = 10;
    cmd_vel = nh_.advertise<geometry_msgs::Twist>("/cmd_vel", 5);
    cmd_vel_acc = nh_.advertise<roborts_msgs::TwistAccel>("/cmd_vel_acc", 5);
    move_goal_sub_ = nh_.subscribe<geometry_msgs::PoseStamped>("/move_base_simple/goal", 1, &LookAheadPlannerServer::RvizMoveGoalCallBack, this);
    path_pub_ = nh_.advertise<nav_msgs::Path>("/global_planner_node/pa", 10);
    vel_ = nh_.advertise<geometry_msgs::Twist>("/all_vel", 5);
    nh_.getParam("pure_pursuit_c",pure_pursuit_C);
    nh_.getParam("l_d",L_D);
    nh_.getParam("V",grbl.normal_velocity);
    nh_.getParam("A",grbl.normal_accelaration);
    nh_.getParam("enable_rotate",enable_rotate);
    nh_.getParam("finish_toleration",finish_toleration);
    nh_.getParam("k_p",k_p);
    nh_.getParam("k_d",k_d);
    nh_.getParam("k_i",k_i);
    nh_.getParam("C",grbl.C);
    SetNodeState(NodeState::IDLE);
}

void LookAheadPlannerServer::calculate_struct(std::vector<geometry_msgs::PoseStamped> path_){
    int size = path_.size();
    float last_x;
    float last_y;
    //cross_? means starter point
    float cross_x = path_[0].pose.position.x * 1000;
    float cross_y = path_[0].pose.position.y * 1000;
    float now_x;
    float now_y;
    float future_x;
    float future_y;
    int step = 0;
    for(int i = 0;i < size - 2;i++){
        // transfer m to mm
        last_x = path_[i].pose.position.x * 1000;
        last_y = path_[i].pose.position.y * 1000;
        now_x = path_[i + 1].pose.position.x * 1000;
        now_y = path_[i + 1].pose.position.y * 1000;
        future_x = path_[i + 2].pose.position.x * 1000;
        future_y = path_[i + 2].pose.position.y * 1000;

        if(judgeTurn(last_x,last_y,now_x,now_y,future_x,future_y) || i == size - 3){
            grbl.start_buffer[grbl.start_buffer_tail].step = step;
            grbl.start_buffer[grbl.start_buffer_tail].millimeters = (abs(cross_x - now_x) < 20 ? abs(cross_y - now_y) : abs(cross_x - now_x));
            grbl.start_buffer[grbl.start_buffer_tail].cross = (abs(cross_x - now_x)) < 20 ? 1 : 0;
            grbl.start_buffer[grbl.start_buffer_tail].forwards[0] = - (cross_x - now_x);
            grbl.start_buffer[grbl.start_buffer_tail].forwards[1] = - (cross_y - now_y);
            grbl.start_buffer[grbl.start_buffer_tail].last_target[0] =  cross_x;
            grbl.start_buffer[grbl.start_buffer_tail].last_target[1] =  cross_y;
            step = 0;
            grbl.start_buffer_tail++;
            cross_x = now_x;
            cross_y = now_y;
        }
        else{
            step++;
        }
    }
}

bool LookAheadPlannerServer::check_crash(){
  costmap_ptr_->GetRobotPose(current_start);
  x = current_start.pose.position.x;
  y = current_start.pose.position.y;
  
  int index = find_closest();
  float xx = path_[index].pose.position.x;
  float yy = path_[index].pose.position.y;
  float x1,y1;
  unsigned int goal_x,goal_y;
  for(int i = index + 1;i < path_.size();i++){
    x1 = path_[i].pose.position.x;
    y1 = path_[i].pose.position.y;
    costmap_ptr_->GetCostMap()->World2Map(x1,
                                          y1,
                                          goal_x,
                                          goal_y);
    if(sqrt((x1 - xx) * (x1 - xx) + (y1 - yy) * (y1 - yy)) > 4){
      return true;
    }
    else if(costmap_ptr_->GetCostMap()->GetCost(goal_x,goal_y) >= 253){
      ROS_INFO("at %f %f G!",x1,y1);
      return false;
    }
  } 
  return true;
}

void LookAheadPlannerServer::RvizMoveGoalCallBack(const geometry_msgs::PoseStamped::ConstPtr &goalptr) {
  ROS_INFO("Into RvizMoveGoalCallBack");
  if(GetNodeState() == NodeState::IDLE){
    ROS_INFO("State is IDLE,doing");
    SetNodeState(NodeState::RUNNING);
    goal = *goalptr;
    int starting = 0;
    while(starting < 5 || judgeFinish() == 0){
      starting++;
      costmap_ptr_->GetRobotPose(current_start);
      ast -> Plan(current_start,*goalptr,path_);
      path__.poses = path_;
      path__.header.frame_id = costmap_ptr_->GetGlobalFrameID();
      path_pub_.publish(path__);
      grbl.plan_reset();
      calculate_struct(path_);
      grbl.add_path();
      do_simple_work();
      // grbl.check_struct();
      
      path__.poses = path_;
      path_pub_.publish(path__);
      
      geometry_msgs::PoseStamped test;
      path_.clear();
      for(int i = 0;i < grbl.block_buffer_head;i++){
        int k = (grbl.block_buffer[i].millimeters / 50);
        if(k < 50) k = 50;
        for(int j = 0;j < k;j++){
          test.pose.position.x = (grbl.block_buffer[i].last_target[0] + (grbl.block_buffer[i].steps[0] * j / (float)k)) / 1000;
          test.pose.position.y = (grbl.block_buffer[i].last_target[1] + (grbl.block_buffer[i].steps[1] * j / (float)k)) / 1000;
          path_.push_back(test);
        }
      }

      last_error = 0;
      integrated_error = 0;
      double all = 0;
      double x = 0;
      double last_v = 0;
      double all_v = 0;
      int cishu = 0;
      clock_t a2,a1;
      a1 = clock();
      while(check_crash() && judgeFinish() == 0){
        clock_t start, end; 
        start = clock();
        
        costmap_ptr_->GetRobotPose(current_start);
        x = current_start.pose.position.x;
        y = current_start.pose.position.y;
        
        // yaw = atan2(current_start.pose.orientation.w*current_start.pose.orientation.z+current_start.pose.orientation.x*current_start.pose.orientation.y,
        //            1-2*(current_start.pose.orientation.y*current_start.pose.orientation.y+current_start.pose.orientation.z*current_start.pose.orientation.z));

        yaw = tf::getYaw(current_start.pose.orientation);

        x = calculate_v();
        

        end = clock();
        all += (double)(end - start) / CLOCKS_PER_SEC;
        if((sqrt(x) - sqrt(last_v)) > (grbl.normal_accelaration * (double)(end - start) / CLOCKS_PER_SEC)) all_v++;
        last_v = x;
        cishu++;
        std::this_thread::sleep_for(std::chrono::milliseconds(50));

      }
      a2 = clock();
      printf("total time=%f\n", (double)(a2 - a1) / CLOCKS_PER_SEC);
      printf("time=%f\n", all / cishu);
      printf("avg=%f\n", all_v / cishu);
    }
       
    speed.linear.x = 0;
    speed.linear.y = 0;
    speed.angular.z = 0;
    acc.accel.linear.x = 0;
    acc.accel.linear.y = 0;
    acc.accel.angular.z = 0;
    acc.twist = speed;
    last_speed = speed;
    cmd_vel_acc.publish(acc);
    vel_.publish(speed);
    SetNodeState(NodeState::IDLE);
  }
  else if(GetNodeState() == NodeState::RUNNING){
    ROS_INFO("Wait a moment");
    return;
  }
}
/*
  @param:path_
  @return:find the closet point
*/
int LookAheadPlannerServer::find_closest(){
  double min_value = 99999999999;
  int min_index = 0;
  for(int i = 0;i < path_.size();i++){
    geometry_msgs::PoseStamped path_pose = path_[i];
    float x1 = path_pose.pose.position.x;
    float y1 = path_pose.pose.position.y;
    double distance = (x1 - x) * (x1 - x) + (y1 - y) * (y1 - y);
    if(distance < min_value){
      min_index = i;
      min_value = distance;
    }
  }
  return min_index;
}

int LookAheadPlannerServer::find_point(int min_index){
  double l = L_D;
  float xx = path_[min_index].pose.position.x;
  float yy = path_[min_index].pose.position.y;
  for(int i = min_index;i < path_.size();i++){
    geometry_msgs::PoseStamped path_pose = path_[i];
    float x1 = path_pose.pose.position.x;
    float y1 = path_pose.pose.position.y;
    double distance = (x1 - xx) * (x1 - xx) + (y1 - yy) * (y1 - yy);
    if(distance > l){
      return i;
    }
  }
  return path_.size()-1;
}

bool LookAheadPlannerServer::judgeFinish(){
  if(path_.empty()) return false;
  int i;
  if(path_.size() <= 0) i = 0;
  else i = path_.size() - 1;
  costmap_ptr_->GetRobotPose(current_start);
  x = current_start.pose.position.x;
  y = current_start.pose.position.y;
  float xx = path_[i].pose.position.x;
  float yy = path_[i].pose.position.y;
  return ((xx - x) * (xx - x) + (yy - y) * (yy - y) < finish_toleration);
}
double LookAheadPlannerServer::do_pure_pursuit(){
  int min_index = find_closest();
  int index = find_point(min_index);
  double angle;
  float delta_x = path_[index].pose.position.x - x;
  float delta_y = path_[index].pose.position.y - y;
  angle = atan2(delta_y,delta_x);
  angle -= yaw;
  return atan2(2*sqrt((delta_x*delta_x)+(delta_y*delta_y))*sin(angle),sqrt(L_D)) * 1.2;
}

bool LookAheadPlannerServer::judgeAcc(){
  return (abs(last_acc.accel.linear.x - acc.accel.linear.x) > 0.01 || 
          abs(last_acc.accel.linear.y - acc.accel.linear.y) > 0.01 ||
          abs(last_acc.accel.angular.z - acc.accel.angular.z) > 0.01);
}
void LookAheadPlannerServer::do_simple_work(){
  for(int i = 0;i < grbl.block_buffer_head;i++){
    if(grbl.block_buffer[i].steps[0] != 0){
      A[i] = ((float)grbl.block_buffer[i].steps[1]) / grbl.block_buffer[i].steps[0];
      C[i] = grbl.block_buffer[i].last_target[1] - A[i] * grbl.block_buffer[i].last_target[0];
    }
    else{
      A[i] = 114514;;
      C[i] = grbl.block_buffer[i].last_target[0];
    }
  }
}
double LookAheadPlannerServer::calculate_v(){
  int i;
  float unit_vec[2];
  float index = 999999999;
  float P;
  costmap_ptr_->GetRobotPose(current_start);
  x = current_start.pose.position.x;
  y = current_start.pose.position.y;
  int a = find_closest();
  float xx = path_[a].pose.position.x * 1000;
  float yy = path_[a].pose.position.y * 1000;
  int min_index = 1;
  for(i = 0;i < grbl.block_buffer_head;i++){
    if(A[i] != 114514){
      P = abs(A[i] * xx - yy  + C[i]) / sqrt(A[i] * A[i] + 1);
    }
    else{
      P = abs(xx - C[i]);
    }
    if(P < index){
      index = P;
      min_index = i;
    }
    // ROS_INFO("pre-handle: %d,distance is %f",i,P);
  }
  i = min_index;
  
  //we choose grbl.block_buffer[i]
  float V1,V2,V3,V4;
  float x1 = grbl.block_buffer[i].last_target[0] - xx;
  float y1 = grbl.block_buffer[i].last_target[1] - yy; 
  float x2 = grbl.block_buffer[i].last_target[0] + (grbl.block_buffer[i].steps[0])  - xx;
  float y2 = grbl.block_buffer[i].last_target[1] + (grbl.block_buffer[i].steps[1])  - yy;
  float D1 = sqrt(x1 * x1 + y1 * y1);
  float D2 = sqrt(x2 * x2 + y2 * y2);
  int flag = 0;
  float V;

  V2 = grbl.block_buffer[i].nominal_speed_sqr;
  V1 = grbl.block_buffer[i].entry_speed_sqr + 2 * grbl.block_buffer[i].acceleration * D1;
  if(V1 > V2){
    flag = 1;
  }
  
  if(flag){
    if(i == grbl.block_buffer_head - 1){
      V4 = 0;
      V3 = V4 + 2 * grbl.block_buffer[i].acceleration / 4 * D2;
      // ROS_INFO("let V4 is 0! %f %f %f %f D2 is %f calculate V3 is %f",grbl.block_buffer[i].last_target[0] + (grbl.block_buffer[i].steps[0]),grbl.block_buffer[i].last_target[1] + (grbl.block_buffer[i].steps[1]),xx,yy,D2,2 * grbl.block_buffer[i].acceleration * D2);
    }
    else{
      V4 = grbl.block_buffer[i+1].entry_speed_sqr;
      V3 = V4 + 2 * grbl.block_buffer[i].acceleration * D2;
    }
    
    if(V3 > V2){
      V = V2;
      flag = 1;
    }
    else{
      V = V3;
      flag = 2;
    }
  }
  else{
    V = V1;
  }
  // ROS_INFO("3");
  grbl.now_velocity = V;
  V = sqrt(V);
  V /= 1000;
  publish_speed.linear.x = V;
  vel_.publish(publish_speed);

if(enable_rotate){
  speed.linear.x = ((1.0 * grbl.block_buffer[i].steps[0]) / grbl.block_buffer[i].millimeters) * V;
  speed.linear.y = ((1.0 * grbl.block_buffer[i].steps[1]) / grbl.block_buffer[i].millimeters) * V;
  speed.angular.z = do_pure_pursuit();
  
  acc.accel.linear.x = 0;
  acc.accel.linear.y = 0;
  acc.accel.angular.z = 0;
  if(flag == 0){
    acc.accel.linear.x = (grbl.block_buffer[i].acceleration * ((1.0 * grbl.block_buffer[i].steps[0]) / grbl.block_buffer[i].millimeters)) / 1000;
    acc.accel.linear.y = (grbl.block_buffer[i].acceleration * ((1.0 * grbl.block_buffer[i].steps[1]) / grbl.block_buffer[i].millimeters)) / 1000;
  }
  else if(flag == 2){
    acc.accel.linear.x = -(grbl.block_buffer[i].acceleration * ((1.0 * grbl.block_buffer[i].steps[0]) / grbl.block_buffer[i].millimeters)) / 1000;
    acc.accel.linear.y = -(grbl.block_buffer[i].acceleration * ((1.0 * grbl.block_buffer[i].steps[1]) / grbl.block_buffer[i].millimeters)) / 1000;
  }
}
else{
  int min_index = find_closest();
  int index = find_point(min_index);
  float delta_x = path_[index].pose.position.x - x;
  float delta_y = path_[index].pose.position.y - y;
  error = atan2(delta_y,delta_x);
  error_after_pid = k_p * error + k_d * ((error - last_error) / (0.05)) + k_i * integrated_error;
  last_error = error;
  integrated_error += error * (0.05);
  speed.linear.x = cos(error_after_pid) * V;
  speed.linear.y = sin(error_after_pid) * V;

  speed.angular.z = 0;
  acc.accel.linear.x = 0;
  acc.accel.linear.y = 0;
  acc.accel.angular.z = 0;
  if(flag == 0){
    acc.accel.linear.x = (grbl.block_buffer[i].acceleration * ((1.0 * grbl.block_buffer[i].steps[0]) / grbl.block_buffer[i].millimeters)) / 1000;
    acc.accel.linear.y = (grbl.block_buffer[i].acceleration * ((1.0 * grbl.block_buffer[i].steps[1]) / grbl.block_buffer[i].millimeters)) / 1000;
  }
  else if(flag == 2){
    acc.accel.linear.x = -(grbl.block_buffer[i].acceleration * ((1.0 * grbl.block_buffer[i].steps[0]) / grbl.block_buffer[i].millimeters)) / 1000;
    acc.accel.linear.y = -(grbl.block_buffer[i].acceleration * ((1.0 * grbl.block_buffer[i].steps[1]) / grbl.block_buffer[i].millimeters)) / 1000;
  }
}
  acc.twist = speed;
  // acc.accel.angular.z = (speed.angular.z - last_speed.angular.z) * 0.3;
  last_speed = speed;
  // if(judgeAcc()){
    // ROS_INFO("Publish new acc,%f %f %f",i,speed.linear.x,speed.linear.y,speed.angular.z,V);
  cmd_vel_acc.publish(acc);
  //   last_acc = acc;
  // }
  return grbl.now_velocity;
}
/*
// abandoned
void LookAheadPlannerServer::FeedbackCb(const roborts_msgs::GlobalPlannerFeedbackConstPtr& feedback){
    path_ = feedback->path.poses;
    plan_reset();
    calculate_struct(path_);
    add_path();
    do_simple_work();
    // std::cout << "add_path finished\n";
    while(check_crash()){
      costmap_ptr_->GetRobotPose(current_start);
      x = current_start.pose.position.x;
      y = current_start.pose.position.y;
      
      // yaw = atan2(current_start.pose.orientation.w*current_start.pose.orientation.z+current_start.pose.orientation.x*current_start.pose.// orientation.y,
      //            1-2*(current_start.pose.orientation.y*current_start.pose.orientation.y+current_start.pose.orientation.z*current_start.pose.orientation.z));
      yaw = tf::getYaw(current_start.pose.orientation);
      std::this_thread::sleep_for(std::chrono::milliseconds(500));
      
      calculate_v();
    }
    ROS_INFO("maybe crashed!Resent the goal");
    SendGoal();
}

void LookAheadPlannerServer::DoneCallback(const actionlib::SimpleClientGoalState& state,  const roborts_msgs::GlobalPlannerResultConstPtr& result){
    ROS_INFO("The goal is done with %s!",state.toString().c_str());
}

void LookAheadPlannerServer::ActiveCallback() {
    ROS_INFO("Action server has recived the goal, the goal is active!");
}

void LookAheadPlannerServer::SendGoal(){
    roborts_msgs::GlobalPlannerGoal command_;
    command_.goal = goal;
    ac_.sendGoal(command_,
                boost::bind(&LookAheadPlannerServer::DoneCallback, this, _1, _2),
                boost::bind(&LookAheadPlannerServer::ActiveCallback, this),
                boost::bind(&LookAheadPlannerServer::FeedbackCb, this, _1));
    
    bool finished_before_timeout = ac_.waitForResult(ros::Duration(30.0));

    if (finished_before_timeout){
        actionlib::SimpleClientGoalState state = ac_.getState();
        ROS_INFO("Action finished: %s",state.toString().c_str());
    }
    else
        ROS_INFO("Action did not finish before the time out.");
}
*/
int main(int argc,char** argv){
  ros::init(argc, argv, "look_ahead_planner_server");

  ros::NodeHandle n;

  LookAheadPlannerServer global_planner_client;

  // while(ros::ok()){
  //   // global_planner_client.SendGoal();
  //   // std::this_thread::sleep_for(std::chrono::milliseconds(5));
  //   ros::spinOnce();
  //   // ros::spin();
  // }
  ros::spin();
}

