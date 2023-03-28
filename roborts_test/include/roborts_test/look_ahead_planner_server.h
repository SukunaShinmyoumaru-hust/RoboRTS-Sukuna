#ifndef GLOBAL_PLANNER_CLIENT
#define GLOBAL_PLANNER_CLIENT

#include <chrono>
#include <algorithm>
#include <condition_variable>
#include <mutex>
#include <thread>

#include <pcl_ros/point_cloud.h>
#include <tf/transform_listener.h>
#include "actionlib/client/simple_action_client.h"
#include "nav_msgs/Path.h"
#include "./a_star_planner/a_star_planner.h"

#include "state/error_code.h"
#include "io/io.h"
#include "state/node_state.h"
#include <math.h>
#include <tf/transform_listener.h>
#include "costmap/costmap_interface.h"

#include "costmap/costmap_interface.h"

#include "geometry_msgs/Twist.h"
#include "roborts_msgs/TwistAccel.h"
#include "./include/roborts_test/grbl.h"
#define USE_NOT_GLOBAL_PLANNER

class LookAheadPlannerServer{
public:
    typedef std::shared_ptr<roborts_costmap::CostmapInterface> CostmapPtr;
    typedef std::shared_ptr<tf::TransformListener> TfPtr;

    LookAheadPlannerServer();

    ~LookAheadPlannerServer() = default;

    void calculate_struct(std::vector<geometry_msgs::PoseStamped> path_);

    void parse_start_struct();

    float calculate_velocity();

    int find_closest();

    int find_point(int min_index);

    double do_pure_pursuit();

    void calculate_v();

    bool judgeAcc();

    void get_amcl_pose(const geometry_msgs::PoseStamped::ConstPtr& msg);

    void RvizMoveGoalCallBack(const geometry_msgs::PoseStamped::ConstPtr &goal);

    bool check_crash();

    void do_simple_work();

    bool judgeFinish();
private:
    geometry_msgs::PoseStamped goal;
    TfPtr tf_ptr_;
    std::string map_path;
    nav_msgs::Path path__;
    CostmapPtr costmap_ptr_;
    roborts_global_planner::AStarPlanner ast;
    std::vector<geometry_msgs::PoseStamped> path_;
    ros::NodeHandle nh_;
    ros::NodeHandle rviz_nh_;
    ros::Publisher cmd_vel_acc;
    ros::Publisher cmd_vel;
    ros::Subscriber amcl_pose;
    double linear_vel;
    float x;
    float y;
    geometry_msgs::Twist speed;
    roborts_msgs::TwistAccel acc;
    geometry_msgs::Twist last_speed;
    roborts_msgs::TwistAccel last_acc;
    float yaw;

    geometry_msgs::PoseStamped current_start;
    ros::Subscriber move_goal_sub_;
    ros::Publisher path_pub_;
    
    float A[100];
    float C[100];

    float pure_pursuit_C;
    float L_D;
    float now_velocity;

    Grbl grbl;
    int enable_rotate;
};

#endif

