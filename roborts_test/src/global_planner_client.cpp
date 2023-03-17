#include "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_test/include/roborts_test/global_planner_client.h"
#include "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_test/include/roborts_test/grbl.h"

extern plan_block_t block_buffer[BLOCK_BUFFER_SIZE];  // A ring buffer for motion instructions
extern uint8_t block_buffer_tail;
extern uint8_t block_buffer_head;     // Index of the next block to be pushed
extern uint8_t next_buffer_head;      // Index of the next buffer head
extern uint8_t block_buffer_planned;  // Index of the optimally planned block
extern float now_velocity;
extern temp_block_t start_buffer[BLOCK_BUFFER_SIZE];  // A ring buffer for motion instructions
extern int start_buffer_tail;
extern planner_t pl;

typedef std::shared_ptr<roborts_costmap::CostmapInterface> CostmapPtr;
typedef std::shared_ptr<tf::TransformListener> TfPtr;


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

GlobalPlannerClient::GlobalPlannerClient() :
    ac_("global_planner_node_action", true)
{   
    ac_.waitForServer();
    ROS_INFO("Action server started, sending goal.");
    last_speed.linear.x = 0;
    last_speed.linear.y = 0;
    last_speed.angular.z = 0;
    last_acc.accel.linear.x = 0;
    last_acc.accel.linear.y = 0;
    last_acc.accel.angular.z = 0;
    yaw = 0;
    now_velocity = 10;
    cmd_vel = nh_.advertise<geometry_msgs::Twist>("/cmd_vel", 5);
    cmd_vel_acc = nh_.advertise<roborts_msgs::TwistAccel>("/cmd_vel_acc", 5);
    // amcl_pose = nh_.subscribe<geometry_msgs::PoseStamped>("amcl_pose", 1000, boost::bind(&GlobalPlannerClient::get_amcl_pose, this, _1));
    // move_goal_sub_ = nh_.subscribe<geometry_msgs::PoseStamped>("/move_base_simple/goal", 1, boost::bind(&GlobalPlannerClient::RvizMoveGoalCallBack, this, _1));
    amcl_pose = nh_.subscribe<geometry_msgs::PoseStamped>("/amcl_pose", 1000, &GlobalPlannerClient::get_amcl_pose, this);
    move_goal_sub_ = nh_.subscribe<geometry_msgs::PoseStamped>("/move_base_simple/goal", 1, &GlobalPlannerClient::RvizMoveGoalCallBack, this);
    path_pub_ = nh_.advertise<nav_msgs::Path>("/global_planner_node/paths", 10);

    tf_ptr_ = std::make_shared<tf::TransformListener>(ros::Duration(10));
    std::string map_path = ros::package::getPath("roborts_costmap") + \
        "/config/costmap_parameter_config_for_global_plan.prototxt";
    costmap_ptr_ = std::make_shared<roborts_costmap::CostmapInterface>("global_costmap",
                                                                            *tf_ptr_,
                                                                            map_path.c_str());
    ast.GiveCostMap(costmap_ptr_);

}


void GlobalPlannerClient::calculate_struct(std::vector<geometry_msgs::PoseStamped> path_){
    int size = path_.size();
    float last_x;
    float last_y;
    //cross_? means starter point
    float cross_x = path_[0].pose.position.x;
    float cross_y = path_[0].pose.position.y;
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

        if(judgeTurn(last_x,last_y,now_x,now_y,future_x,future_y) || i == size - 2){
            start_buffer[start_buffer_tail].step = step;
            start_buffer[start_buffer_tail].millimeters = (abs(cross_x - now_x) < 20 ? abs(cross_y - now_y) : abs(cross_x - now_x));
            start_buffer[start_buffer_tail].cross = (abs(cross_x - now_x)) < 20 ? 1 : 0;
            start_buffer[start_buffer_tail].forwards[0] = - (cross_x - now_x);
            start_buffer[start_buffer_tail].forwards[1] = - (cross_y - now_y);
            start_buffer[start_buffer_tail].last_target[0] =  cross_x;
            start_buffer[start_buffer_tail].last_target[1] =  cross_y;
            step = 0;
            start_buffer_tail++;
            cross_x = now_x;
            cross_y = now_y;
        }
        else{
            step++;
        }
    }
}

void GlobalPlannerClient::get_amcl_pose(const geometry_msgs::PoseStamped::ConstPtr& msg){
  yaw = tf::getYaw(msg->pose.orientation);
  current_start = *msg;
  x = current_start.pose.position.x;
  y = current_start.pose.position.y;
}

bool GlobalPlannerClient::check_crash(){
  int index = find_closest();
  float x = path_[index].pose.position.x;
  float y = path_[index].pose.position.y;
  float x1,y1;
  unsigned int goal_x,goal_y;
  for(int i = index + 1;i < path_.size();i++){
    x1 = path_[i].pose.position.x;
    y1 = path_[i].pose.position.y;
    costmap_ptr_->GetCostMap()->World2Map(x1,
                                          y1,
                                          goal_x,
                                          goal_y);

    if((x1 - x) * (x1 - x) + (y1 - y) * (y1 - y) > 4){
      return true;
    }
    else if(costmap_ptr_->GetCostMap()->GetCost(goal_x,goal_y) > 253){
      ROS_INFO("G");
      return false;
    }
  } 
  return true;
}

void GlobalPlannerClient::RvizMoveGoalCallBack(const geometry_msgs::PoseStamped::ConstPtr &goal) {
  while(1){
    ast.Plan(current_start,*goal,path_);
    path__.poses = path_;
    path__.header.frame_id = costmap_ptr_->GetGlobalFrameID();
    path_pub_.publish(path__);
    plan_reset();
    calculate_struct(path_);
    add_path();
    /*
    geometry_msgs::PoseStamped test;
    path_.clear();
    for(int i = 0;i < block_buffer_head;i++){
      for(int j = 0;j < 50;j++){
        test.pose.position.x = block_buffer[i].last_target[0] + (block_buffer[i].steps[0] * j / 50000.0);
        test.pose.position.y = block_buffer[i].last_target[1] + (block_buffer[i].steps[1] * j / 50000.0);
        path_.push_back(test);
      }
    }
    */
    // std::cout << "add_path finished\n";
    while(check_crash()){
      costmap_ptr_->GetRobotPose(current_start);
      x = current_start.pose.position.x;
      y = current_start.pose.position.y;
      
      yaw = atan2(current_start.pose.orientation.w*current_start.pose.orientation.z+current_start.pose.orientation.x*current_start.pose.orientation.y,
                  1-2*(current_start.pose.orientation.y*current_start.pose.orientation.y+current_start.pose.orientation.z*current_start.pose.orientation.z));

      std::this_thread::sleep_for(std::chrono::milliseconds(50));

      calculate_v();

    }
    ROS_INFO("Crash Danger");
  }
}
/*
  @param:path_
  @return:find the closet point
*/
int GlobalPlannerClient::find_closest(){
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

int GlobalPlannerClient::find_point(int min_index){
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

double GlobalPlannerClient::do_pure_pursuit(){
  int min_index = find_closest();
  int index = find_point(min_index);
  double angle;
  float delta_x = x - path_[min_index].pose.position.x;
  float delta_y = y - path_[min_index].pose.position.y;
  angle = atan2(delta_y,delta_x);
  angle -= yaw;
  ROS_INFO("%f %f %f %f",path_[index].pose.position.x,path_[index].pose.position.y,path_[min_index].pose.position.x,path_[min_index].pose.position.y);
  ROS_INFO("min_index:%d index:%d Do pure_pursuit:yaw is %f angle is %f",min_index,index,yaw,angle);
  // return atan2(2*sqrt((delta_x*delta_x)+(delta_y*delta_y))*sin(angle),sqrt(L_D)) * 1.2;
  return angle * 1.2;
}

bool GlobalPlannerClient::judgeAcc(){
  return (abs(last_acc.accel.linear.x - acc.accel.linear.x) > 0.01 || 
          abs(last_acc.accel.linear.y - acc.accel.linear.y) > 0.01 ||
          abs(last_acc.accel.angular.z - acc.accel.angular.z) > 0.01);
}

void GlobalPlannerClient::calculate_v(){
  // ROS_INFO("1");
  int i;
  int index_ = find_closest();
  x = path_[index_].pose.position.x;
  y = path_[index_].pose.position.y;
  float unit_vec[2];
  float index = 999999999;
  float A,B,C,P;
  int min_index = 1;
  for(i = 0;i < block_buffer_head;i++){
    A = ((float)block_buffer[i].steps[1]) / block_buffer[i].steps[0];
    B = -1;
    C = block_buffer[i].last_target[1] - A * block_buffer[i].last_target[0];
    P = abs(A * x + B * y + C) / sqrt(A * A + B * B);
    if(P < index){
      index = P;
      min_index = i;
    }
  }
  i = min_index;
  
  //we choose block_buffer[i]
  float V1,V2,V3,V4;
  float x1 = block_buffer[i].last_target[0] - x;
  float y1 = block_buffer[i].last_target[1] - y; 
  float x2 = block_buffer[i].last_target[0] + (block_buffer[i].steps[0]) / 1000.0 - x;
  float y2 = block_buffer[i].last_target[1] + (block_buffer[i].steps[1]) / 1000.0 - y;
  float D1 = sqrt(x1 * x1 + y1 * y1) * 1000;
  float D2 = sqrt(x2 * x2 + y2 * y2) * 1000;
  int flag = 0;
  float V;

  V2 = block_buffer[i].nominal_speed_sqr;
  V1 = block_buffer[i].entry_speed_sqr + 2 * block_buffer[i].acceleration * D1;
  if(V1 > V2){
    flag = 1;
  }
  
  if(flag){
    if(i == block_buffer_head - 1){
      V4 = 0;
    }
    else{
      V4 = block_buffer[i+1].entry_speed_sqr;
    }
    V3 = V4 + 2 * block_buffer[i].acceleration * D2;
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
    V += 10;
  }
  // ROS_INFO("3");
  now_velocity = V;
  V = sqrt(V);
  V /= 1000;

  speed.linear.x = ((1.0 * block_buffer[i].steps[0]) / block_buffer[i].millimeters) * V;
  speed.linear.y = ((1.0 * block_buffer[i].steps[1]) / block_buffer[i].millimeters) * V;
  speed.angular.z = do_pure_pursuit();

  acc.accel.linear.x = 0;
  acc.accel.linear.y = 0;
  acc.accel.angular.z = 0;
  if(flag == 0){
    acc.accel.linear.x = (block_buffer[i].acceleration * ((1.0 * block_buffer[i].steps[0]) / block_buffer[i].millimeters)) / 1000;
    acc.accel.linear.y = (block_buffer[i].acceleration * ((1.0 * block_buffer[i].steps[1]) / block_buffer[i].millimeters)) / 1000;
  }
  else if(flag == 2){
    acc.accel.linear.x = -(block_buffer[i].acceleration * ((1.0 * block_buffer[i].steps[0]) / block_buffer[i].millimeters)) / 1000;
    acc.accel.linear.y = -(block_buffer[i].acceleration * ((1.0 * block_buffer[i].steps[1]) / block_buffer[i].millimeters)) / 1000;
    // if(((speed.linear.x + acc.accel.linear.x) * speed.linear.x < 0) || ((speed.linear.y + acc.accel.linear.y) * speed.linear.y < 0)){
    //   i++;
    // }
  }
  /*
  if(abs(speed.linear.x - last_speed.linear.x) < 0.01){
    acc.accel.linear.x = 0;
  }
  else if(speed.linear.x - last_speed.linear.x > 0){
    acc.accel.linear.x = (block_buffer[i].acceleration * ((1.0 * block_buffer[i].steps[0]) / block_buffer[i].millimeters)) / 1000;
  }
  else{
    acc.accel.linear.x = -(block_buffer[i].acceleration * ((1.0 * block_buffer[i].steps[0]) / block_buffer[i].millimeters)) / 1000;
  }
  if(abs(speed.linear.y - last_speed.linear.y) < 0.01){
    acc.accel.linear.y = 0;
  }
  else if(speed.linear.y - last_speed.linear.y > 0){
    acc.accel.linear.y = (block_buffer[i].acceleration * ((1.0 * block_buffer[i].steps[1]) / block_buffer[i].millimeters)) / 1000;
  }
  else{
    acc.accel.linear.y = -(block_buffer[i].acceleration * ((1.0 * block_buffer[i].steps[1]) / block_buffer[i].millimeters)) / 1000;
  }
  */
  acc.twist = speed;
  // acc.accel.angular.z = (speed.angular.z - last_speed.angular.z) * 0.3;
  last_speed = speed;
  // if(judgeAcc()){
    ROS_INFO("Segments:%d Publish new acc,%f %f %f,velocity is %f",i,acc.accel.linear.x,acc.accel.linear.y,speed.angular.z,V);
    cmd_vel_acc.publish(acc);
    // last_acc = acc;
  //}
}

// abandoned
void GlobalPlannerClient::FeedbackCb(const roborts_msgs::GlobalPlannerFeedbackConstPtr& feedback){
    path_ = feedback->path.poses;
    plan_reset();
    calculate_struct(path_);
    add_path();
    // std::cout << "add_path finished\n";
    while(check_crash()){
      costmap_ptr_->GetRobotPose(current_start);
      x = current_start.pose.position.x;
      y = current_start.pose.position.y;
      
      yaw = atan2(current_start.pose.orientation.w*current_start.pose.orientation.z+current_start.pose.orientation.x*current_start.pose.orientation.y,
                  1-2*(current_start.pose.orientation.y*current_start.pose.orientation.y+current_start.pose.orientation.z*current_start.pose.orientation.z));
      std::this_thread::sleep_for(std::chrono::milliseconds(500));
      
      calculate_v();
    }
    ROS_INFO("maybe crashed!Resent the goal");
    SendGoal();
}

void GlobalPlannerClient::DoneCallback(const actionlib::SimpleClientGoalState& state,  const roborts_msgs::GlobalPlannerResultConstPtr& result){
    ROS_INFO("The goal is done with %s!",state.toString().c_str());
}

void GlobalPlannerClient::ActiveCallback() {
    ROS_INFO("Action server has recived the goal, the goal is active!");
}

void GlobalPlannerClient::SendGoal(){
    roborts_msgs::GlobalPlannerGoal command_;
    command_.goal = goal;
    ac_.sendGoal(command_,
                boost::bind(&GlobalPlannerClient::DoneCallback, this, _1, _2),
                boost::bind(&GlobalPlannerClient::ActiveCallback, this),
                boost::bind(&GlobalPlannerClient::FeedbackCb, this, _1));
    
    bool finished_before_timeout = ac_.waitForResult(ros::Duration(30.0));

    if (finished_before_timeout){
        actionlib::SimpleClientGoalState state = ac_.getState();
        ROS_INFO("Action finished: %s",state.toString().c_str());
    }
    else
        ROS_INFO("Action did not finish before the time out.");
}

int main(int argc,char** argv){
  ros::init(argc, argv, "global_planner_client");

  ros::NodeHandle n;

  GlobalPlannerClient global_planner_client;
  
  grbl_init();
  while(ros::ok()){
    // global_planner_client.SendGoal();
    // std::this_thread::sleep_for(std::chrono::milliseconds(5));
    ros::spinOnce();
    // ros::spin();
  }
}

