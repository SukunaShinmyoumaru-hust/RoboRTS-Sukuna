project(roborts_test)
cmake_minimum_required(VERSION 3.0.2)

set(CMAKE_BUILD_TYPE Release)
set(CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/cmake_module)
find_package(catkin REQUIRED COMPONENTS
  roscpp
  tf
  nav_msgs
  geometry_msgs
  actionlib
  roborts_common
  roborts_msgs
  interactive_markers
  roborts_costmap
)

catkin_package()

include_directories(
  ${catkin_INCLUDE_DIRS}
  ./include/roborts_test
)

add_executable(look_ahead_planner_server
  src/a_star_planner.cpp
  src/look_ahead_planner_server.cpp
  src/grbl.cpp
)

target_link_libraries(look_ahead_planner_server
  PRIVATE
  roborts_costmap
  ${catkin_LIBRARIES}
  ${Boost_LIBRARIES}
  ${GLOG_LIBRARY}
)

add_dependencies(look_ahead_planner_server
  roborts_msgs_generate_messages)
