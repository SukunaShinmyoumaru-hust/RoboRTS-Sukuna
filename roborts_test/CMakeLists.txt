cmake_minimum_required(VERSION 3.0.2)
project(roborts_test)

set(CMAKE_BUILD_TYPE Release)
set(CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake_module)
SET(EXECUTABLE_OUTPUT_PATH /home/sukuna/roborts_ws/devel/lib/roborts_test)
find_package(catkin REQUIRED COMPONENTS
  roscpp
  tf
  pcl_conversions
  pcl_ros
  nav_msgs
  geometry_msgs
  actionlib
  roborts_common
  roborts_msgs
  interactive_markers
  roborts_costmap
)

include_directories(
  ${catkin_INCLUDE_DIRS}
)

add_executable(global_planner_client
  a_star_planner/a_star_planner.cpp
  a_star_planner/proto/a_star_planner_config.pb.cc
  src/global_planner_client.cpp
  src/grbl.cpp
)

target_link_libraries(global_planner_client
  PRIVATE
  roborts_costmap
  ${catkin_LIBRARIES}
  ${Boost_LIBRARIES}
  ${GLOG_LIBRARY}
)

add_dependencies(global_planner_client
  roborts_msgs_generate_messages)