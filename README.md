## EPIC_catkin_ws_for_IMX8
* OPtimized EPIC for I.MX8
* Cross-compile ONLY!


#### Pre-requirements
* Yocto build system
* NXP SDK (from Yocto build)
* toolchain.cmake (AArch64 cross compiler)


#### Cross-compile
```bash
catkin_make -DCMAKE_TOOLCHAIN_FILE=/home/wave/catkin_ws/toolchain.cmake -j1
```


#### Usage
* Execution(in I.MX8)
```bash
cd ~/catkin_ws/src && bash sync-time.sh
roscore
cd ~/catkin_ws && bash run_target_board.v3-3.sh
```

* RTH and RTH service call
```bash
source /opt/ros/noetic/setup.bash
export PYTHONPATH=/home/root/catkin_ws/devel/lib/python3/dist-packages:$PYTHONPATH
export ROS_PACKAGE_PATH=/home/root/catkin_ws/devel/share:$ROS_PACKAGE_PATH
```
```bash
rosservice call /srv_rth "{x: 0.0, y: 0.0, z: 2.0, yaw: 0.0}"
```


#### Notes
* Do not delete build/, devel/ and any other folder and files.
* Dedicated rviz visualizer is required.(Please refer to 'Simulation' branch.)


#### Update log
* 260404: RTH(Return to Home added
* 260405: Auto-generation logging feature/Time-sync script added
* 260406: Modify L-BFGS Optimizer code and some parameters


#### Reference
* [EPIC: Exploring on Point Clouds](https://github.com/Robotics-STAR-Lab/EPIC)

