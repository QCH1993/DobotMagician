# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "dobot: 0 messages, 56 services")

set(MSG_I_FLAGS "-Idobot:/home/qch/dobot_ws/src/dobot/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(dobot_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetDeviceVersion.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/GetDeviceVersion.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorSuctionCup.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorSuctionCup.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorParams.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorParams.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorSuctionCup.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorSuctionCup.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorLaser.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorLaser.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdStopExec.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdStopExec.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetIOMultiplexing.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/GetIOMultiplexing.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetJOGCommonParams.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/GetJOGCommonParams.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetPTPJointParams.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/GetPTPJointParams.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetJOGCoordinateParams.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/SetJOGCoordinateParams.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetEMotor.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/SetEMotor.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetARCParams.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/SetARCParams.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetWAITCmd.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/SetWAITCmd.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetPTPCoordinateParams.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/GetPTPCoordinateParams.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetJOGCmd.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/SetJOGCmd.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/ClearAllAlarmsState.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/ClearAllAlarmsState.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorParams.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorParams.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetPTPJumpParams.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/GetPTPJumpParams.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetPTPCoordinateParams.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/SetPTPCoordinateParams.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetCPParams.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/SetCPParams.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetARCCmd.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/SetARCCmd.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorGripper.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorGripper.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetPTPJumpParams.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/SetPTPJumpParams.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdStartExec.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdStartExec.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetIODI.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/GetIODI.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetDeviceName.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/SetDeviceName.srv" "std_msgs/String"
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetAlarmsState.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/GetAlarmsState.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetPose.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/GetPose.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetIOADC.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/GetIOADC.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetJOGJointParams.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/SetJOGJointParams.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetHOMEParams.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/SetHOMEParams.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorLaser.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorLaser.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetIOPWM.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/GetIOPWM.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetHOMECmd.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/SetHOMECmd.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetJOGCommonParams.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/SetJOGCommonParams.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorGripper.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorGripper.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetHOMEParams.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/GetHOMEParams.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetCPCmd.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/SetCPCmd.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetIOPWM.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/SetIOPWM.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetIODO.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/GetIODO.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetCPParams.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/GetCPParams.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetIODO.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/SetIODO.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetDeviceName.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/GetDeviceName.srv" "std_msgs/String"
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetCmdTimeout.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/SetCmdTimeout.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetPTPCommonParams.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/SetPTPCommonParams.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetPTPCmd.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/SetPTPCmd.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetJOGCoordinateParams.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/GetJOGCoordinateParams.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetDeviceSN.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/GetDeviceSN.srv" "std_msgs/String"
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetARCParams.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/GetARCParams.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetTRIGCmd.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/SetTRIGCmd.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetPTPJointParams.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/SetPTPJointParams.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetIOMultiplexing.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/SetIOMultiplexing.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetPTPCommonParams.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/GetPTPCommonParams.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetJOGJointParams.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/GetJOGJointParams.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdForceStopExec.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdForceStopExec.srv" ""
)

get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdClear.srv" NAME_WE)
add_custom_target(_dobot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dobot" "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdClear.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetDeviceVersion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorSuctionCup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetHOMEParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorLaser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdStopExec.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetIOMultiplexing.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetJOGCommonParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetPTPJointParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetJOGCoordinateParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetIOPWM.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetARCParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetCPCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetPTPCoordinateParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetJOGCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/ClearAllAlarmsState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetARCParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetIOMultiplexing.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetPTPCoordinateParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetIODO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetARCCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorGripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetPTPJumpParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdStartExec.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetIODI.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetDeviceName.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetIOADC.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetJOGJointParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetHOMEParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorLaser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetIOPWM.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetHOMECmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetJOGCommonParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorGripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorSuctionCup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetCmdTimeout.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetWAITCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetCPParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetCPParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetIODO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetDeviceName.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetPTPCommonParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetEMotor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetPTPCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetJOGCoordinateParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetDeviceSN.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetPTPJumpParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetTRIGCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetPTPJointParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetAlarmsState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetPTPCommonParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetJOGJointParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdForceStopExec.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)
_generate_srv_cpp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdClear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
)

### Generating Module File
_generate_module_cpp(dobot
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(dobot_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(dobot_generate_messages dobot_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetDeviceVersion.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorSuctionCup.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorSuctionCup.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorLaser.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdStopExec.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetIOMultiplexing.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetJOGCommonParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetPTPJointParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetJOGCoordinateParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetEMotor.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetARCParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetWAITCmd.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetPTPCoordinateParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetJOGCmd.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/ClearAllAlarmsState.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetPTPJumpParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetPTPCoordinateParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetCPParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetARCCmd.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorGripper.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetPTPJumpParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdStartExec.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetIODI.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetDeviceName.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetAlarmsState.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetPose.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetIOADC.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetJOGJointParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetHOMEParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorLaser.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetIOPWM.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetHOMECmd.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetJOGCommonParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorGripper.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetHOMEParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetCPCmd.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetIOPWM.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetIODO.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetCPParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetIODO.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetDeviceName.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetCmdTimeout.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetPTPCommonParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetPTPCmd.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetJOGCoordinateParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetDeviceSN.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetARCParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetTRIGCmd.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetPTPJointParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetIOMultiplexing.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetPTPCommonParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetJOGJointParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdForceStopExec.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdClear.srv" NAME_WE)
add_dependencies(dobot_generate_messages_cpp _dobot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dobot_gencpp)
add_dependencies(dobot_gencpp dobot_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dobot_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetDeviceVersion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorSuctionCup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetHOMEParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorLaser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdStopExec.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetIOMultiplexing.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetJOGCommonParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetPTPJointParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetJOGCoordinateParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetIOPWM.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetARCParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetCPCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetPTPCoordinateParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetJOGCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/ClearAllAlarmsState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetARCParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetIOMultiplexing.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetPTPCoordinateParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetIODO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetARCCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorGripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetPTPJumpParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdStartExec.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetIODI.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetDeviceName.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetIOADC.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetJOGJointParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetHOMEParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorLaser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetIOPWM.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetHOMECmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetJOGCommonParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorGripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorSuctionCup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetCmdTimeout.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetWAITCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetCPParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetCPParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetIODO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetDeviceName.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetPTPCommonParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetEMotor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetPTPCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetJOGCoordinateParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetDeviceSN.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetPTPJumpParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetTRIGCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetPTPJointParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetAlarmsState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetPTPCommonParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetJOGJointParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdForceStopExec.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)
_generate_srv_eus(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdClear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
)

### Generating Module File
_generate_module_eus(dobot
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(dobot_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(dobot_generate_messages dobot_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetDeviceVersion.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorSuctionCup.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorSuctionCup.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorLaser.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdStopExec.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetIOMultiplexing.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetJOGCommonParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetPTPJointParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetJOGCoordinateParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetEMotor.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetARCParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetWAITCmd.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetPTPCoordinateParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetJOGCmd.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/ClearAllAlarmsState.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetPTPJumpParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetPTPCoordinateParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetCPParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetARCCmd.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorGripper.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetPTPJumpParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdStartExec.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetIODI.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetDeviceName.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetAlarmsState.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetPose.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetIOADC.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetJOGJointParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetHOMEParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorLaser.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetIOPWM.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetHOMECmd.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetJOGCommonParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorGripper.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetHOMEParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetCPCmd.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetIOPWM.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetIODO.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetCPParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetIODO.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetDeviceName.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetCmdTimeout.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetPTPCommonParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetPTPCmd.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetJOGCoordinateParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetDeviceSN.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetARCParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetTRIGCmd.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetPTPJointParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetIOMultiplexing.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetPTPCommonParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetJOGJointParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdForceStopExec.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdClear.srv" NAME_WE)
add_dependencies(dobot_generate_messages_eus _dobot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dobot_geneus)
add_dependencies(dobot_geneus dobot_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dobot_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetDeviceVersion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorSuctionCup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetHOMEParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorLaser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdStopExec.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetIOMultiplexing.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetJOGCommonParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetPTPJointParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetJOGCoordinateParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetIOPWM.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetARCParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetCPCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetPTPCoordinateParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetJOGCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/ClearAllAlarmsState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetARCParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetIOMultiplexing.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetPTPCoordinateParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetIODO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetARCCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorGripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetPTPJumpParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdStartExec.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetIODI.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetDeviceName.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetIOADC.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetJOGJointParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetHOMEParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorLaser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetIOPWM.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetHOMECmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetJOGCommonParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorGripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorSuctionCup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetCmdTimeout.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetWAITCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetCPParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetCPParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetIODO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetDeviceName.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetPTPCommonParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetEMotor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetPTPCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetJOGCoordinateParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetDeviceSN.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetPTPJumpParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetTRIGCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetPTPJointParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetAlarmsState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetPTPCommonParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetJOGJointParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdForceStopExec.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)
_generate_srv_lisp(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdClear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
)

### Generating Module File
_generate_module_lisp(dobot
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(dobot_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(dobot_generate_messages dobot_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetDeviceVersion.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorSuctionCup.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorSuctionCup.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorLaser.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdStopExec.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetIOMultiplexing.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetJOGCommonParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetPTPJointParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetJOGCoordinateParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetEMotor.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetARCParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetWAITCmd.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetPTPCoordinateParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetJOGCmd.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/ClearAllAlarmsState.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetPTPJumpParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetPTPCoordinateParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetCPParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetARCCmd.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorGripper.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetPTPJumpParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdStartExec.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetIODI.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetDeviceName.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetAlarmsState.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetPose.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetIOADC.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetJOGJointParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetHOMEParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorLaser.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetIOPWM.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetHOMECmd.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetJOGCommonParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorGripper.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetHOMEParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetCPCmd.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetIOPWM.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetIODO.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetCPParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetIODO.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetDeviceName.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetCmdTimeout.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetPTPCommonParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetPTPCmd.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetJOGCoordinateParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetDeviceSN.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetARCParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetTRIGCmd.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetPTPJointParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetIOMultiplexing.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetPTPCommonParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetJOGJointParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdForceStopExec.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdClear.srv" NAME_WE)
add_dependencies(dobot_generate_messages_lisp _dobot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dobot_genlisp)
add_dependencies(dobot_genlisp dobot_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dobot_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetDeviceVersion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorSuctionCup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetHOMEParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorLaser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdStopExec.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetIOMultiplexing.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetJOGCommonParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetPTPJointParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetJOGCoordinateParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetIOPWM.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetARCParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetCPCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetPTPCoordinateParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetJOGCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/ClearAllAlarmsState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetARCParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetIOMultiplexing.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetPTPCoordinateParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetIODO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetARCCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorGripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetPTPJumpParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdStartExec.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetIODI.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetDeviceName.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetIOADC.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetJOGJointParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetHOMEParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorLaser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetIOPWM.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetHOMECmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetJOGCommonParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorGripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorSuctionCup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetCmdTimeout.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetWAITCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetCPParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetCPParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetIODO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetDeviceName.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetPTPCommonParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetEMotor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetPTPCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetJOGCoordinateParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetDeviceSN.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetPTPJumpParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetTRIGCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetPTPJointParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetAlarmsState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetPTPCommonParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetJOGJointParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdForceStopExec.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)
_generate_srv_nodejs(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdClear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
)

### Generating Module File
_generate_module_nodejs(dobot
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(dobot_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(dobot_generate_messages dobot_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetDeviceVersion.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorSuctionCup.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorSuctionCup.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorLaser.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdStopExec.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetIOMultiplexing.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetJOGCommonParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetPTPJointParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetJOGCoordinateParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetEMotor.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetARCParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetWAITCmd.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetPTPCoordinateParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetJOGCmd.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/ClearAllAlarmsState.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetPTPJumpParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetPTPCoordinateParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetCPParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetARCCmd.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorGripper.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetPTPJumpParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdStartExec.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetIODI.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetDeviceName.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetAlarmsState.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetPose.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetIOADC.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetJOGJointParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetHOMEParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorLaser.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetIOPWM.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetHOMECmd.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetJOGCommonParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorGripper.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetHOMEParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetCPCmd.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetIOPWM.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetIODO.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetCPParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetIODO.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetDeviceName.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetCmdTimeout.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetPTPCommonParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetPTPCmd.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetJOGCoordinateParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetDeviceSN.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetARCParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetTRIGCmd.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetPTPJointParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetIOMultiplexing.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetPTPCommonParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetJOGJointParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdForceStopExec.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdClear.srv" NAME_WE)
add_dependencies(dobot_generate_messages_nodejs _dobot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dobot_gennodejs)
add_dependencies(dobot_gennodejs dobot_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dobot_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetDeviceVersion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorSuctionCup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetHOMEParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorLaser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdStopExec.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetIOMultiplexing.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetJOGCommonParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetPTPJointParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetJOGCoordinateParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetIOPWM.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetARCParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetCPCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetPTPCoordinateParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetJOGCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/ClearAllAlarmsState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetARCParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetIOMultiplexing.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetPTPCoordinateParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetIODO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetARCCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorGripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetPTPJumpParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdStartExec.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetIODI.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetDeviceName.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetIOADC.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetJOGJointParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetHOMEParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorLaser.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetIOPWM.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetHOMECmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetJOGCommonParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorGripper.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorSuctionCup.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetCmdTimeout.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetWAITCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetCPParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetCPParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetIODO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetDeviceName.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetPTPCommonParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetEMotor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetPTPCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetJOGCoordinateParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetDeviceSN.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetPTPJumpParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetTRIGCmd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetPTPJointParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetAlarmsState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetPTPCommonParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/GetJOGJointParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdForceStopExec.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)
_generate_srv_py(dobot
  "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdClear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
)

### Generating Module File
_generate_module_py(dobot
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(dobot_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(dobot_generate_messages dobot_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetDeviceVersion.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorSuctionCup.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorSuctionCup.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorLaser.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdStopExec.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetIOMultiplexing.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetJOGCommonParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetPTPJointParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetJOGCoordinateParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetEMotor.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetARCParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetWAITCmd.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetPTPCoordinateParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetJOGCmd.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/ClearAllAlarmsState.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetPTPJumpParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetPTPCoordinateParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetCPParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetARCCmd.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetEndEffectorGripper.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetPTPJumpParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdStartExec.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetIODI.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetDeviceName.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetAlarmsState.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetPose.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetIOADC.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetJOGJointParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetHOMEParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorLaser.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetIOPWM.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetHOMECmd.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetJOGCommonParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetEndEffectorGripper.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetHOMEParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetCPCmd.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetIOPWM.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetIODO.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetCPParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetIODO.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetDeviceName.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetCmdTimeout.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetPTPCommonParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetPTPCmd.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetJOGCoordinateParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetDeviceSN.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetARCParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetTRIGCmd.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetPTPJointParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetIOMultiplexing.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetPTPCommonParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/GetJOGJointParams.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdForceStopExec.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/qch/dobot_ws/src/dobot/srv/SetQueuedCmdClear.srv" NAME_WE)
add_dependencies(dobot_generate_messages_py _dobot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dobot_genpy)
add_dependencies(dobot_genpy dobot_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dobot_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dobot
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(dobot_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dobot
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(dobot_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dobot
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(dobot_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dobot
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(dobot_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dobot
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(dobot_generate_messages_py std_msgs_generate_messages_py)
endif()
