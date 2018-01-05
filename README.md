DobotMagician
===========================
This is a function realization source file based on ROS and the package dobot realized by Dobot corporation.
With the help of Xiaodong Guo(https://github.com/guoxiaodong1992) and Tao Wei, I realize two functions below:
1) use a joystick to control the DobotMagician robot arm (DobotClient_JoyCtrl.cpp)
2) obtain the position coordinates of the robot arm's endpoint at a setted frequency.
reference: please see how to use ros to control dobot [https://cn.dobot.cc/tutorial/ros-demo-control-dobot-magician.html]

# 1.prerequisites

ROS install

dobot_ws download

joystick driver install

## 1.1 ROS install

	see [http://www.cnblogs.com/liu-fa/p/5779206.html]

## 1.2 dobot_ws download

	see [https://cn.dobot.cc/downloadcenter/dobot-magician.html?sub_cat=72#sub-download]

## 1.3 joystick driver install

	see [http://blog.csdn.net/sujun3304/article/details/18791843]

	ps: you can use jstest-gtk to test whether your joysticks work well.


# USAGE

## compile 

	cd dobot_ws

	catkin_make

## open roscore

	roscore 

## open another teminal and open dobot server

	source devel/setup.bash

	sudo chmod 666 /dev/ttyUSB0 //change the authority of ttyUSB0

	rosrun dobot DobotServer ttyUSB0 

## open another terminal and open joy node

	rosrun joy joy_node

## open another terminal and open joy control

	source devel/setup.bash

	rosrun dobot DobotClient_JoyCtrl

## open another terminal and open pose get, the armTrack.csv will be recorded

	souce devel/setup.bash

	rosrun dobot DobotClient_GetPose# DobotMagician

