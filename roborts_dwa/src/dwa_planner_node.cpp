// Copyright 2023 amsl

#include "dwa_planner/dwa_planner.h"

int main(int argc, char **argv)
{
    ros::init(argc, argv, "roborts_dwa");
    DWAPlanner planner;
    ROS_INFO("Into process");
    planner.process();
    return 0;
}
