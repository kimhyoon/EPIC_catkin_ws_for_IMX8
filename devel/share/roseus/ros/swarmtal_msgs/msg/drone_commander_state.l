;; Auto-generated. Do not edit!


(when (boundp 'swarmtal_msgs::drone_commander_state)
  (if (not (find-package "SWARMTAL_MSGS"))
    (make-package "SWARMTAL_MSGS"))
  (shadow 'drone_commander_state (find-package "SWARMTAL_MSGS")))
(unless (find-package "SWARMTAL_MSGS::DRONE_COMMANDER_STATE")
  (make-package "SWARMTAL_MSGS::DRONE_COMMANDER_STATE"))

(in-package "ROS")
;;//! \htmlinclude drone_commander_state.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(intern "*CTRL_INPUT_NONE*" (find-package "SWARMTAL_MSGS::DRONE_COMMANDER_STATE"))
(shadow '*CTRL_INPUT_NONE* (find-package "SWARMTAL_MSGS::DRONE_COMMANDER_STATE"))
(defconstant swarmtal_msgs::drone_commander_state::*CTRL_INPUT_NONE* 0)
(intern "*CTRL_INPUT_RC*" (find-package "SWARMTAL_MSGS::DRONE_COMMANDER_STATE"))
(shadow '*CTRL_INPUT_RC* (find-package "SWARMTAL_MSGS::DRONE_COMMANDER_STATE"))
(defconstant swarmtal_msgs::drone_commander_state::*CTRL_INPUT_RC* 1)
(intern "*CTRL_INPUT_ONBOARD*" (find-package "SWARMTAL_MSGS::DRONE_COMMANDER_STATE"))
(shadow '*CTRL_INPUT_ONBOARD* (find-package "SWARMTAL_MSGS::DRONE_COMMANDER_STATE"))
(defconstant swarmtal_msgs::drone_commander_state::*CTRL_INPUT_ONBOARD* 2)
(intern "*FLIGHT_STATUS_IDLE*" (find-package "SWARMTAL_MSGS::DRONE_COMMANDER_STATE"))
(shadow '*FLIGHT_STATUS_IDLE* (find-package "SWARMTAL_MSGS::DRONE_COMMANDER_STATE"))
(defconstant swarmtal_msgs::drone_commander_state::*FLIGHT_STATUS_IDLE* 0)
(intern "*FLIGHT_STATUS_ARMED*" (find-package "SWARMTAL_MSGS::DRONE_COMMANDER_STATE"))
(shadow '*FLIGHT_STATUS_ARMED* (find-package "SWARMTAL_MSGS::DRONE_COMMANDER_STATE"))
(defconstant swarmtal_msgs::drone_commander_state::*FLIGHT_STATUS_ARMED* 1)
(intern "*FLIGHT_STATUS_IN_AIR*" (find-package "SWARMTAL_MSGS::DRONE_COMMANDER_STATE"))
(shadow '*FLIGHT_STATUS_IN_AIR* (find-package "SWARMTAL_MSGS::DRONE_COMMANDER_STATE"))
(defconstant swarmtal_msgs::drone_commander_state::*FLIGHT_STATUS_IN_AIR* 2)
(intern "*FLIGHT_STATUS_CRASHED*" (find-package "SWARMTAL_MSGS::DRONE_COMMANDER_STATE"))
(shadow '*FLIGHT_STATUS_CRASHED* (find-package "SWARMTAL_MSGS::DRONE_COMMANDER_STATE"))
(defconstant swarmtal_msgs::drone_commander_state::*FLIGHT_STATUS_CRASHED* 3)
(intern "*CTRL_AUTH_RC*" (find-package "SWARMTAL_MSGS::DRONE_COMMANDER_STATE"))
(shadow '*CTRL_AUTH_RC* (find-package "SWARMTAL_MSGS::DRONE_COMMANDER_STATE"))
(defconstant swarmtal_msgs::drone_commander_state::*CTRL_AUTH_RC* 0)
(intern "*CTRL_AUTH_APP*" (find-package "SWARMTAL_MSGS::DRONE_COMMANDER_STATE"))
(shadow '*CTRL_AUTH_APP* (find-package "SWARMTAL_MSGS::DRONE_COMMANDER_STATE"))
(defconstant swarmtal_msgs::drone_commander_state::*CTRL_AUTH_APP* 1)
(intern "*CTRL_AUTH_THIS*" (find-package "SWARMTAL_MSGS::DRONE_COMMANDER_STATE"))
(shadow '*CTRL_AUTH_THIS* (find-package "SWARMTAL_MSGS::DRONE_COMMANDER_STATE"))
(defconstant swarmtal_msgs::drone_commander_state::*CTRL_AUTH_THIS* 2)
(intern "*LANDING_MODE_XYVEL*" (find-package "SWARMTAL_MSGS::DRONE_COMMANDER_STATE"))
(shadow '*LANDING_MODE_XYVEL* (find-package "SWARMTAL_MSGS::DRONE_COMMANDER_STATE"))
(defconstant swarmtal_msgs::drone_commander_state::*LANDING_MODE_XYVEL* 0)
(intern "*LANDING_MODE_ATT*" (find-package "SWARMTAL_MSGS::DRONE_COMMANDER_STATE"))
(shadow '*LANDING_MODE_ATT* (find-package "SWARMTAL_MSGS::DRONE_COMMANDER_STATE"))
(defconstant swarmtal_msgs::drone_commander_state::*LANDING_MODE_ATT* 1)
(intern "*CTRL_MODE_IDLE*" (find-package "SWARMTAL_MSGS::DRONE_COMMANDER_STATE"))
(shadow '*CTRL_MODE_IDLE* (find-package "SWARMTAL_MSGS::DRONE_COMMANDER_STATE"))
(defconstant swarmtal_msgs::drone_commander_state::*CTRL_MODE_IDLE* 0)
(intern "*CTRL_MODE_TAKEOFF*" (find-package "SWARMTAL_MSGS::DRONE_COMMANDER_STATE"))
(shadow '*CTRL_MODE_TAKEOFF* (find-package "SWARMTAL_MSGS::DRONE_COMMANDER_STATE"))
(defconstant swarmtal_msgs::drone_commander_state::*CTRL_MODE_TAKEOFF* 1)
(intern "*CTRL_MODE_LANDING*" (find-package "SWARMTAL_MSGS::DRONE_COMMANDER_STATE"))
(shadow '*CTRL_MODE_LANDING* (find-package "SWARMTAL_MSGS::DRONE_COMMANDER_STATE"))
(defconstant swarmtal_msgs::drone_commander_state::*CTRL_MODE_LANDING* 2)
(intern "*CTRL_MODE_HOVER*" (find-package "SWARMTAL_MSGS::DRONE_COMMANDER_STATE"))
(shadow '*CTRL_MODE_HOVER* (find-package "SWARMTAL_MSGS::DRONE_COMMANDER_STATE"))
(defconstant swarmtal_msgs::drone_commander_state::*CTRL_MODE_HOVER* 3)
(intern "*CTRL_MODE_POSVEL*" (find-package "SWARMTAL_MSGS::DRONE_COMMANDER_STATE"))
(shadow '*CTRL_MODE_POSVEL* (find-package "SWARMTAL_MSGS::DRONE_COMMANDER_STATE"))
(defconstant swarmtal_msgs::drone_commander_state::*CTRL_MODE_POSVEL* 4)
(intern "*CTRL_MODE_ATT*" (find-package "SWARMTAL_MSGS::DRONE_COMMANDER_STATE"))
(shadow '*CTRL_MODE_ATT* (find-package "SWARMTAL_MSGS::DRONE_COMMANDER_STATE"))
(defconstant swarmtal_msgs::drone_commander_state::*CTRL_MODE_ATT* 5)
(intern "*CTRL_MODE_MISSION*" (find-package "SWARMTAL_MSGS::DRONE_COMMANDER_STATE"))
(shadow '*CTRL_MODE_MISSION* (find-package "SWARMTAL_MSGS::DRONE_COMMANDER_STATE"))
(defconstant swarmtal_msgs::drone_commander_state::*CTRL_MODE_MISSION* 6)

(defun swarmtal_msgs::drone_commander_state-to-symbol (const)
  (cond
        ((= const 0) 'swarmtal_msgs::drone_commander_state::*CTRL_INPUT_NONE*)
        ((= const 1) 'swarmtal_msgs::drone_commander_state::*CTRL_INPUT_RC*)
        ((= const 2) 'swarmtal_msgs::drone_commander_state::*CTRL_INPUT_ONBOARD*)
        ((= const 0) 'swarmtal_msgs::drone_commander_state::*FLIGHT_STATUS_IDLE*)
        ((= const 1) 'swarmtal_msgs::drone_commander_state::*FLIGHT_STATUS_ARMED*)
        ((= const 2) 'swarmtal_msgs::drone_commander_state::*FLIGHT_STATUS_IN_AIR*)
        ((= const 3) 'swarmtal_msgs::drone_commander_state::*FLIGHT_STATUS_CRASHED*)
        ((= const 0) 'swarmtal_msgs::drone_commander_state::*CTRL_AUTH_RC*)
        ((= const 1) 'swarmtal_msgs::drone_commander_state::*CTRL_AUTH_APP*)
        ((= const 2) 'swarmtal_msgs::drone_commander_state::*CTRL_AUTH_THIS*)
        ((= const 0) 'swarmtal_msgs::drone_commander_state::*LANDING_MODE_XYVEL*)
        ((= const 1) 'swarmtal_msgs::drone_commander_state::*LANDING_MODE_ATT*)
        ((= const 0) 'swarmtal_msgs::drone_commander_state::*CTRL_MODE_IDLE*)
        ((= const 1) 'swarmtal_msgs::drone_commander_state::*CTRL_MODE_TAKEOFF*)
        ((= const 2) 'swarmtal_msgs::drone_commander_state::*CTRL_MODE_LANDING*)
        ((= const 3) 'swarmtal_msgs::drone_commander_state::*CTRL_MODE_HOVER*)
        ((= const 4) 'swarmtal_msgs::drone_commander_state::*CTRL_MODE_POSVEL*)
        ((= const 5) 'swarmtal_msgs::drone_commander_state::*CTRL_MODE_ATT*)
        ((= const 6) 'swarmtal_msgs::drone_commander_state::*CTRL_MODE_MISSION*)
        (t nil)))

(defclass swarmtal_msgs::drone_commander_state
  :super ros::object
  :slots (_ctrl_input_state _flight_status _control_auth _takeoff_target_height _takeoff_velocity _vo_latency _landing_mode _landing_velocity _commander_ctrl_mode _bat_vol _bat_remain _is_armed _rc_valid _onboard_cmd_valid _vo_valid _djisdk_valid _pos _vel _yaw _ctrl_cmd _imu_data ))

(defmethod swarmtal_msgs::drone_commander_state
  (:init
   (&key
    ((:ctrl_input_state __ctrl_input_state) 0)
    ((:flight_status __flight_status) 0)
    ((:control_auth __control_auth) 0)
    ((:takeoff_target_height __takeoff_target_height) 0.0)
    ((:takeoff_velocity __takeoff_velocity) 0.0)
    ((:vo_latency __vo_latency) 0.0)
    ((:landing_mode __landing_mode) 0)
    ((:landing_velocity __landing_velocity) 0.0)
    ((:commander_ctrl_mode __commander_ctrl_mode) 0)
    ((:bat_vol __bat_vol) 0.0)
    ((:bat_remain __bat_remain) 0.0)
    ((:is_armed __is_armed) nil)
    ((:rc_valid __rc_valid) nil)
    ((:onboard_cmd_valid __onboard_cmd_valid) nil)
    ((:vo_valid __vo_valid) nil)
    ((:djisdk_valid __djisdk_valid) nil)
    ((:pos __pos) (instance geometry_msgs::Point :init))
    ((:vel __vel) (instance geometry_msgs::Point :init))
    ((:yaw __yaw) 0.0)
    ((:ctrl_cmd __ctrl_cmd) (instance swarmtal_msgs::drone_pos_ctrl_cmd :init))
    ((:imu_data __imu_data) (instance sensor_msgs::Imu :init))
    )
   (send-super :init)
   (setq _ctrl_input_state (round __ctrl_input_state))
   (setq _flight_status (round __flight_status))
   (setq _control_auth (round __control_auth))
   (setq _takeoff_target_height (float __takeoff_target_height))
   (setq _takeoff_velocity (float __takeoff_velocity))
   (setq _vo_latency (float __vo_latency))
   (setq _landing_mode (round __landing_mode))
   (setq _landing_velocity (float __landing_velocity))
   (setq _commander_ctrl_mode (round __commander_ctrl_mode))
   (setq _bat_vol (float __bat_vol))
   (setq _bat_remain (float __bat_remain))
   (setq _is_armed __is_armed)
   (setq _rc_valid __rc_valid)
   (setq _onboard_cmd_valid __onboard_cmd_valid)
   (setq _vo_valid __vo_valid)
   (setq _djisdk_valid __djisdk_valid)
   (setq _pos __pos)
   (setq _vel __vel)
   (setq _yaw (float __yaw))
   (setq _ctrl_cmd __ctrl_cmd)
   (setq _imu_data __imu_data)
   self)
  (:ctrl_input_state
   (&optional __ctrl_input_state)
   (if __ctrl_input_state (setq _ctrl_input_state __ctrl_input_state)) _ctrl_input_state)
  (:flight_status
   (&optional __flight_status)
   (if __flight_status (setq _flight_status __flight_status)) _flight_status)
  (:control_auth
   (&optional __control_auth)
   (if __control_auth (setq _control_auth __control_auth)) _control_auth)
  (:takeoff_target_height
   (&optional __takeoff_target_height)
   (if __takeoff_target_height (setq _takeoff_target_height __takeoff_target_height)) _takeoff_target_height)
  (:takeoff_velocity
   (&optional __takeoff_velocity)
   (if __takeoff_velocity (setq _takeoff_velocity __takeoff_velocity)) _takeoff_velocity)
  (:vo_latency
   (&optional __vo_latency)
   (if __vo_latency (setq _vo_latency __vo_latency)) _vo_latency)
  (:landing_mode
   (&optional __landing_mode)
   (if __landing_mode (setq _landing_mode __landing_mode)) _landing_mode)
  (:landing_velocity
   (&optional __landing_velocity)
   (if __landing_velocity (setq _landing_velocity __landing_velocity)) _landing_velocity)
  (:commander_ctrl_mode
   (&optional __commander_ctrl_mode)
   (if __commander_ctrl_mode (setq _commander_ctrl_mode __commander_ctrl_mode)) _commander_ctrl_mode)
  (:bat_vol
   (&optional __bat_vol)
   (if __bat_vol (setq _bat_vol __bat_vol)) _bat_vol)
  (:bat_remain
   (&optional __bat_remain)
   (if __bat_remain (setq _bat_remain __bat_remain)) _bat_remain)
  (:is_armed
   (&optional (__is_armed :null))
   (if (not (eq __is_armed :null)) (setq _is_armed __is_armed)) _is_armed)
  (:rc_valid
   (&optional (__rc_valid :null))
   (if (not (eq __rc_valid :null)) (setq _rc_valid __rc_valid)) _rc_valid)
  (:onboard_cmd_valid
   (&optional (__onboard_cmd_valid :null))
   (if (not (eq __onboard_cmd_valid :null)) (setq _onboard_cmd_valid __onboard_cmd_valid)) _onboard_cmd_valid)
  (:vo_valid
   (&optional (__vo_valid :null))
   (if (not (eq __vo_valid :null)) (setq _vo_valid __vo_valid)) _vo_valid)
  (:djisdk_valid
   (&optional (__djisdk_valid :null))
   (if (not (eq __djisdk_valid :null)) (setq _djisdk_valid __djisdk_valid)) _djisdk_valid)
  (:pos
   (&rest __pos)
   (if (keywordp (car __pos))
       (send* _pos __pos)
     (progn
       (if __pos (setq _pos (car __pos)))
       _pos)))
  (:vel
   (&rest __vel)
   (if (keywordp (car __vel))
       (send* _vel __vel)
     (progn
       (if __vel (setq _vel (car __vel)))
       _vel)))
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:ctrl_cmd
   (&rest __ctrl_cmd)
   (if (keywordp (car __ctrl_cmd))
       (send* _ctrl_cmd __ctrl_cmd)
     (progn
       (if __ctrl_cmd (setq _ctrl_cmd (car __ctrl_cmd)))
       _ctrl_cmd)))
  (:imu_data
   (&rest __imu_data)
   (if (keywordp (car __imu_data))
       (send* _imu_data __imu_data)
     (progn
       (if __imu_data (setq _imu_data (car __imu_data)))
       _imu_data)))
  (:serialization-length
   ()
   (+
    ;; uint32 _ctrl_input_state
    4
    ;; uint32 _flight_status
    4
    ;; uint32 _control_auth
    4
    ;; float64 _takeoff_target_height
    8
    ;; float64 _takeoff_velocity
    8
    ;; float32 _vo_latency
    4
    ;; uint32 _landing_mode
    4
    ;; float64 _landing_velocity
    8
    ;; uint32 _commander_ctrl_mode
    4
    ;; float32 _bat_vol
    4
    ;; float32 _bat_remain
    4
    ;; bool _is_armed
    1
    ;; bool _rc_valid
    1
    ;; bool _onboard_cmd_valid
    1
    ;; bool _vo_valid
    1
    ;; bool _djisdk_valid
    1
    ;; geometry_msgs/Point _pos
    (send _pos :serialization-length)
    ;; geometry_msgs/Point _vel
    (send _vel :serialization-length)
    ;; float64 _yaw
    8
    ;; swarmtal_msgs/drone_pos_ctrl_cmd _ctrl_cmd
    (send _ctrl_cmd :serialization-length)
    ;; sensor_msgs/Imu _imu_data
    (send _imu_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _ctrl_input_state
       (write-long _ctrl_input_state s)
     ;; uint32 _flight_status
       (write-long _flight_status s)
     ;; uint32 _control_auth
       (write-long _control_auth s)
     ;; float64 _takeoff_target_height
       (sys::poke _takeoff_target_height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _takeoff_velocity
       (sys::poke _takeoff_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _vo_latency
       (sys::poke _vo_latency (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _landing_mode
       (write-long _landing_mode s)
     ;; float64 _landing_velocity
       (sys::poke _landing_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _commander_ctrl_mode
       (write-long _commander_ctrl_mode s)
     ;; float32 _bat_vol
       (sys::poke _bat_vol (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _bat_remain
       (sys::poke _bat_remain (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _is_armed
       (if _is_armed (write-byte -1 s) (write-byte 0 s))
     ;; bool _rc_valid
       (if _rc_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _onboard_cmd_valid
       (if _onboard_cmd_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _vo_valid
       (if _vo_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _djisdk_valid
       (if _djisdk_valid (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Point _pos
       (send _pos :serialize s)
     ;; geometry_msgs/Point _vel
       (send _vel :serialize s)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; swarmtal_msgs/drone_pos_ctrl_cmd _ctrl_cmd
       (send _ctrl_cmd :serialize s)
     ;; sensor_msgs/Imu _imu_data
       (send _imu_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _ctrl_input_state
     (setq _ctrl_input_state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _flight_status
     (setq _flight_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _control_auth
     (setq _control_auth (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _takeoff_target_height
     (setq _takeoff_target_height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _takeoff_velocity
     (setq _takeoff_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _vo_latency
     (setq _vo_latency (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _landing_mode
     (setq _landing_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _landing_velocity
     (setq _landing_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _commander_ctrl_mode
     (setq _commander_ctrl_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _bat_vol
     (setq _bat_vol (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _bat_remain
     (setq _bat_remain (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _is_armed
     (setq _is_armed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rc_valid
     (setq _rc_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _onboard_cmd_valid
     (setq _onboard_cmd_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _vo_valid
     (setq _vo_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _djisdk_valid
     (setq _djisdk_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Point _pos
     (send _pos :deserialize buf ptr-) (incf ptr- (send _pos :serialization-length))
   ;; geometry_msgs/Point _vel
     (send _vel :deserialize buf ptr-) (incf ptr- (send _vel :serialization-length))
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; swarmtal_msgs/drone_pos_ctrl_cmd _ctrl_cmd
     (send _ctrl_cmd :deserialize buf ptr-) (incf ptr- (send _ctrl_cmd :serialization-length))
   ;; sensor_msgs/Imu _imu_data
     (send _imu_data :deserialize buf ptr-) (incf ptr- (send _imu_data :serialization-length))
   ;;
   self)
  )

(setf (get swarmtal_msgs::drone_commander_state :md5sum-) "95ace68b12ed603a8645498808e5a9bb")
(setf (get swarmtal_msgs::drone_commander_state :datatype-) "swarmtal_msgs/drone_commander_state")
(setf (get swarmtal_msgs::drone_commander_state :definition-)
      "uint32 CTRL_INPUT_NONE=0
uint32 CTRL_INPUT_RC=1
uint32 CTRL_INPUT_ONBOARD=2

uint32 ctrl_input_state


uint32 FLIGHT_STATUS_IDLE=0 # Motor Stopped, on ground
uint32 FLIGHT_STATUS_ARMED=1 # Armed, on ground
uint32 FLIGHT_STATUS_IN_AIR=2 #Armed Inair
uint32 FLIGHT_STATUS_CRASHED=3 # Crashed, Armed

uint32 flight_status

uint32 CTRL_AUTH_RC = 0
uint32 CTRL_AUTH_APP = 1
uint32 CTRL_AUTH_THIS = 2

uint32 control_auth

float64 takeoff_target_height
float64 takeoff_velocity

float32 vo_latency
#0 vo landing
#1 zero attitude landing

uint32 LANDING_MODE_XYVEL = 0
uint32 LANDING_MODE_ATT = 1

uint32 landing_mode
float64 landing_velocity

uint32 CTRL_MODE_IDLE=0
uint32 CTRL_MODE_TAKEOFF=1
uint32 CTRL_MODE_LANDING=2
uint32 CTRL_MODE_HOVER=3
uint32 CTRL_MODE_POSVEL=4
uint32 CTRL_MODE_ATT=5
uint32 CTRL_MODE_MISSION=6

uint32 commander_ctrl_mode

float32 bat_vol
float32 bat_remain

bool is_armed
bool rc_valid
bool onboard_cmd_valid
bool vo_valid
bool djisdk_valid

geometry_msgs/Point pos
geometry_msgs/Point vel
float64 yaw

drone_pos_ctrl_cmd ctrl_cmd

sensor_msgs/Imu imu_data
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: swarmtal_msgs/drone_pos_ctrl_cmd
uint32 CTRL_CMD_IDLE_MODE = 0
uint32 CTRL_CMD_VEL_MODE  = 1
uint32 CTRL_CMD_POS_MODE  = 2
uint32 CTRL_CMD_ATT_THRUST_MODE  = 3
uint32 CTRL_CMD_ATT_VELZ_MODE  = 4

uint32 ctrl_mode

geometry_msgs/Vector3 pos_sp
geometry_msgs/Vector3 vel_sp
geometry_msgs/Vector3 acc_sp
geometry_msgs/Quaternion att_sp
float64 yaw_sp
float64 z_sp

bool use_fc_yaw

geometry_msgs/Vector3 max_vel
================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: sensor_msgs/Imu
# This is a message to hold data from an IMU (Inertial Measurement Unit)
#
# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec
#
# If the covariance of the measurement is known, it should be filled in (if all you know is the 
# variance of each measurement, e.g. from the datasheet, just put those along the diagonal)
# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the
# data a covariance will have to be assumed or gotten from some other source
#
# If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation 
# estimate), please set element 0 of the associated covariance matrix to -1
# If you are interpreting this message, please check for a value of -1 in the first element of each 
# covariance matrix, and disregard the associated estimate.

Header header

geometry_msgs/Quaternion orientation
float64[9] orientation_covariance # Row major about x, y, z axes

geometry_msgs/Vector3 angular_velocity
float64[9] angular_velocity_covariance # Row major about x, y, z axes

geometry_msgs/Vector3 linear_acceleration
float64[9] linear_acceleration_covariance # Row major x, y z 

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :swarmtal_msgs/drone_commander_state "95ace68b12ed603a8645498808e5a9bb")


