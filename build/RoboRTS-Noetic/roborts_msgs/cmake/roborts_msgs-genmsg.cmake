# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "roborts_msgs: 34 messages, 2 services")

set(MSG_I_FLAGS "-Iroborts_msgs:/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg;-Iroborts_msgs:/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/chassis;-Iroborts_msgs:/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/gimbal;-Iroborts_msgs:/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(roborts_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerAction.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerAction.msg" "std_msgs/Header:roborts_msgs/LocalPlannerActionGoal:geometry_msgs/Pose:roborts_msgs/LocalPlannerFeedback:geometry_msgs/Point:roborts_msgs/LocalPlannerResult:geometry_msgs/Quaternion:nav_msgs/Path:actionlib_msgs/GoalID:roborts_msgs/LocalPlannerGoal:roborts_msgs/LocalPlannerActionFeedback:actionlib_msgs/GoalStatus:geometry_msgs/PoseStamped:roborts_msgs/LocalPlannerActionResult"
)

get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionGoal.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionGoal.msg" "std_msgs/Header:geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Quaternion:nav_msgs/Path:actionlib_msgs/GoalID:roborts_msgs/LocalPlannerGoal:geometry_msgs/PoseStamped"
)

get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionResult.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionResult.msg" "actionlib_msgs/GoalStatus:std_msgs/Header:roborts_msgs/LocalPlannerResult:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionFeedback.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionFeedback.msg" "actionlib_msgs/GoalStatus:std_msgs/Header:roborts_msgs/LocalPlannerFeedback:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg" "std_msgs/Header:geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Quaternion:nav_msgs/Path:geometry_msgs/PoseStamped"
)

get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg" ""
)

get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg" ""
)

get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerAction.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerAction.msg" "std_msgs/Header:roborts_msgs/GlobalPlannerActionFeedback:geometry_msgs/Pose:roborts_msgs/GlobalPlannerGoal:geometry_msgs/Point:roborts_msgs/GlobalPlannerActionResult:geometry_msgs/Quaternion:nav_msgs/Path:actionlib_msgs/GoalID:roborts_msgs/GlobalPlannerResult:actionlib_msgs/GoalStatus:roborts_msgs/GlobalPlannerActionGoal:geometry_msgs/PoseStamped:roborts_msgs/GlobalPlannerFeedback"
)

get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionGoal.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionGoal.msg" "std_msgs/Header:geometry_msgs/Pose:roborts_msgs/GlobalPlannerGoal:geometry_msgs/Point:geometry_msgs/Quaternion:actionlib_msgs/GoalID:geometry_msgs/PoseStamped"
)

get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionResult.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionResult.msg" "actionlib_msgs/GoalStatus:std_msgs/Header:actionlib_msgs/GoalID:roborts_msgs/GlobalPlannerResult"
)

get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionFeedback.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionFeedback.msg" "std_msgs/Header:geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Quaternion:nav_msgs/Path:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:geometry_msgs/PoseStamped:roborts_msgs/GlobalPlannerFeedback"
)

get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg" "std_msgs/Header:geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/PoseStamped"
)

get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg" ""
)

get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg" "std_msgs/Header:geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Quaternion:nav_msgs/Path:geometry_msgs/PoseStamped"
)

get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionAction.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionAction.msg" "std_msgs/Header:roborts_msgs/ArmorDetectionGoal:roborts_msgs/ArmorDetectionResult:roborts_msgs/ArmorDetectionFeedback:roborts_msgs/ArmorDetectionActionFeedback:geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Quaternion:roborts_msgs/ArmorDetectionActionGoal:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:roborts_msgs/ArmorDetectionActionResult:geometry_msgs/PoseStamped"
)

get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionGoal.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionGoal.msg" "std_msgs/Header:roborts_msgs/ArmorDetectionGoal:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionResult.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionResult.msg" "actionlib_msgs/GoalStatus:std_msgs/Header:actionlib_msgs/GoalID:roborts_msgs/ArmorDetectionResult"
)

get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionFeedback.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionFeedback.msg" "std_msgs/Header:roborts_msgs/ArmorDetectionFeedback:geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Quaternion:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:geometry_msgs/PoseStamped"
)

get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg" ""
)

get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg" ""
)

get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg" "std_msgs/Header:geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/PoseStamped"
)

get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/chassis/TwistAccel.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/chassis/TwistAccel.msg" "geometry_msgs/Accel:geometry_msgs/Vector3:geometry_msgs/Twist"
)

get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/gimbal/GimbalAngle.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/gimbal/GimbalAngle.msg" ""
)

get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameStatus.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameStatus.msg" ""
)

get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameResult.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameResult.msg" ""
)

get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameRobotHP.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameRobotHP.msg" ""
)

get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameRobotBullet.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameRobotBullet.msg" ""
)

get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameZone.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameZone.msg" ""
)

get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameZoneArray.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameZoneArray.msg" "roborts_msgs/GameZone"
)

get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotStatus.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotStatus.msg" ""
)

get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotHeat.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotHeat.msg" ""
)

get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotDamage.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotDamage.msg" ""
)

get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotShoot.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotShoot.msg" ""
)

get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/LurkStatus.msg" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/LurkStatus.msg" ""
)

get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/srv/gimbal/FricWhl.srv" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/srv/gimbal/FricWhl.srv" ""
)

get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/srv/gimbal/ShootCmd.srv" NAME_WE)
add_custom_target(_roborts_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roborts_msgs" "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/srv/gimbal/ShootCmd.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/chassis/TwistAccel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/gimbal/GimbalAngle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameRobotHP.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameRobotBullet.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameZone.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameZoneArray.msg"
  "${MSG_I_FLAGS}"
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameZone.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotHeat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotDamage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotShoot.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_cpp(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/LurkStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)

### Generating Services
_generate_srv_cpp(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/srv/gimbal/FricWhl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)
_generate_srv_cpp(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/srv/gimbal/ShootCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
)

### Generating Module File
_generate_module_cpp(roborts_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(roborts_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(roborts_msgs_generate_messages roborts_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerAction.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerAction.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionAction.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/chassis/TwistAccel.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/gimbal/GimbalAngle.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameStatus.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameRobotHP.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameRobotBullet.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameZone.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameZoneArray.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotStatus.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotHeat.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotDamage.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotShoot.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/LurkStatus.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/srv/gimbal/FricWhl.srv" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/srv/gimbal/ShootCmd.srv" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_cpp _roborts_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roborts_msgs_gencpp)
add_dependencies(roborts_msgs_gencpp roborts_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roborts_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/chassis/TwistAccel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/gimbal/GimbalAngle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameRobotHP.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameRobotBullet.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameZone.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameZoneArray.msg"
  "${MSG_I_FLAGS}"
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameZone.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotHeat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotDamage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotShoot.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_msg_eus(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/LurkStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)

### Generating Services
_generate_srv_eus(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/srv/gimbal/FricWhl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)
_generate_srv_eus(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/srv/gimbal/ShootCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
)

### Generating Module File
_generate_module_eus(roborts_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(roborts_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(roborts_msgs_generate_messages roborts_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerAction.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerAction.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionAction.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/chassis/TwistAccel.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/gimbal/GimbalAngle.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameStatus.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameRobotHP.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameRobotBullet.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameZone.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameZoneArray.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotStatus.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotHeat.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotDamage.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotShoot.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/LurkStatus.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/srv/gimbal/FricWhl.srv" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/srv/gimbal/ShootCmd.srv" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_eus _roborts_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roborts_msgs_geneus)
add_dependencies(roborts_msgs_geneus roborts_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roborts_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/chassis/TwistAccel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/gimbal/GimbalAngle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameRobotHP.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameRobotBullet.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameZone.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameZoneArray.msg"
  "${MSG_I_FLAGS}"
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameZone.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotHeat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotDamage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotShoot.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_msg_lisp(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/LurkStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)

### Generating Services
_generate_srv_lisp(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/srv/gimbal/FricWhl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)
_generate_srv_lisp(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/srv/gimbal/ShootCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
)

### Generating Module File
_generate_module_lisp(roborts_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(roborts_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(roborts_msgs_generate_messages roborts_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerAction.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerAction.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionAction.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/chassis/TwistAccel.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/gimbal/GimbalAngle.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameStatus.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameRobotHP.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameRobotBullet.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameZone.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameZoneArray.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotStatus.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotHeat.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotDamage.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotShoot.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/LurkStatus.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/srv/gimbal/FricWhl.srv" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/srv/gimbal/ShootCmd.srv" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_lisp _roborts_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roborts_msgs_genlisp)
add_dependencies(roborts_msgs_genlisp roborts_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roborts_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/chassis/TwistAccel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/gimbal/GimbalAngle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameRobotHP.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameRobotBullet.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameZone.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameZoneArray.msg"
  "${MSG_I_FLAGS}"
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameZone.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotHeat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotDamage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotShoot.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_msg_nodejs(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/LurkStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)

### Generating Services
_generate_srv_nodejs(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/srv/gimbal/FricWhl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)
_generate_srv_nodejs(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/srv/gimbal/ShootCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
)

### Generating Module File
_generate_module_nodejs(roborts_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(roborts_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(roborts_msgs_generate_messages roborts_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerAction.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerAction.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionAction.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/chassis/TwistAccel.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/gimbal/GimbalAngle.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameStatus.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameRobotHP.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameRobotBullet.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameZone.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameZoneArray.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotStatus.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotHeat.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotDamage.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotShoot.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/LurkStatus.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/srv/gimbal/FricWhl.srv" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/srv/gimbal/ShootCmd.srv" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_nodejs _roborts_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roborts_msgs_gennodejs)
add_dependencies(roborts_msgs_gennodejs roborts_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roborts_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionResult.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/chassis/TwistAccel.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/gimbal/GimbalAngle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameRobotHP.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameRobotBullet.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameZone.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameZoneArray.msg"
  "${MSG_I_FLAGS}"
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameZone.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotHeat.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotDamage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotShoot.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_msg_py(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/LurkStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)

### Generating Services
_generate_srv_py(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/srv/gimbal/FricWhl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)
_generate_srv_py(roborts_msgs
  "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/srv/gimbal/ShootCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
)

### Generating Module File
_generate_module_py(roborts_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(roborts_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(roborts_msgs_generate_messages roborts_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerAction.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerActionFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/LocalPlannerFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerAction.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerActionFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/GlobalPlannerFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionAction.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionActionFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionGoal.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/devel/share/roborts_msgs/msg/ArmorDetectionFeedback.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/chassis/TwistAccel.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/gimbal/GimbalAngle.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameStatus.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameResult.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameRobotHP.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameRobotBullet.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameZone.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/GameZoneArray.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotStatus.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotHeat.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotDamage.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/RobotShoot.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/msg/referee_system/LurkStatus.msg" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/srv/gimbal/FricWhl.srv" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/sukuna/roborts_ws/src/RoboRTS-Noetic/roborts_msgs/srv/gimbal/ShootCmd.srv" NAME_WE)
add_dependencies(roborts_msgs_generate_messages_py _roborts_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roborts_msgs_genpy)
add_dependencies(roborts_msgs_genpy roborts_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roborts_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roborts_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(roborts_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(roborts_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(roborts_msgs_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roborts_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(roborts_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(roborts_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(roborts_msgs_generate_messages_eus nav_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roborts_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(roborts_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(roborts_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(roborts_msgs_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roborts_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(roborts_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(roborts_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(roborts_msgs_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roborts_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(roborts_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(roborts_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(roborts_msgs_generate_messages_py nav_msgs_generate_messages_py)
endif()
