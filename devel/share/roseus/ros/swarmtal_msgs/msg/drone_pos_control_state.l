;; Auto-generated. Do not edit!


(when (boundp 'swarmtal_msgs::drone_pos_control_state)
  (if (not (find-package "SWARMTAL_MSGS"))
    (make-package "SWARMTAL_MSGS"))
  (shadow 'drone_pos_control_state (find-package "SWARMTAL_MSGS")))
(unless (find-package "SWARMTAL_MSGS::DRONE_POS_CONTROL_STATE")
  (make-package "SWARMTAL_MSGS::DRONE_POS_CONTROL_STATE"))

(in-package "ROS")
;;//! \htmlinclude drone_pos_control_state.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass swarmtal_msgs::drone_pos_control_state
  :super ros::object
  :slots (_Header _pose _imu_data _pitch_cmd _roll_cmd _yaw_cmd _thrust_cmd _pitch _roll _yaw _yaw_sp _acc_cmd _vel_cmd _global_vel _pos_sp _ctrl_mode _use_fc_yaw _count _max_vel ))

(defmethod swarmtal_msgs::drone_pos_control_state
  (:init
   (&key
    ((:Header __Header) (instance std_msgs::Header :init))
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:imu_data __imu_data) (instance sensor_msgs::Imu :init))
    ((:pitch_cmd __pitch_cmd) 0.0)
    ((:roll_cmd __roll_cmd) 0.0)
    ((:yaw_cmd __yaw_cmd) 0.0)
    ((:thrust_cmd __thrust_cmd) 0.0)
    ((:pitch __pitch) 0.0)
    ((:roll __roll) 0.0)
    ((:yaw __yaw) 0.0)
    ((:yaw_sp __yaw_sp) 0.0)
    ((:acc_cmd __acc_cmd) (instance geometry_msgs::Vector3 :init))
    ((:vel_cmd __vel_cmd) (instance geometry_msgs::Vector3 :init))
    ((:global_vel __global_vel) (instance geometry_msgs::Vector3 :init))
    ((:pos_sp __pos_sp) (instance geometry_msgs::Vector3 :init))
    ((:ctrl_mode __ctrl_mode) 0)
    ((:use_fc_yaw __use_fc_yaw) nil)
    ((:count __count) 0)
    ((:max_vel __max_vel) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _Header __Header)
   (setq _pose __pose)
   (setq _imu_data __imu_data)
   (setq _pitch_cmd (float __pitch_cmd))
   (setq _roll_cmd (float __roll_cmd))
   (setq _yaw_cmd (float __yaw_cmd))
   (setq _thrust_cmd (float __thrust_cmd))
   (setq _pitch (float __pitch))
   (setq _roll (float __roll))
   (setq _yaw (float __yaw))
   (setq _yaw_sp (float __yaw_sp))
   (setq _acc_cmd __acc_cmd)
   (setq _vel_cmd __vel_cmd)
   (setq _global_vel __global_vel)
   (setq _pos_sp __pos_sp)
   (setq _ctrl_mode (round __ctrl_mode))
   (setq _use_fc_yaw __use_fc_yaw)
   (setq _count (round __count))
   (setq _max_vel __max_vel)
   self)
  (:Header
   (&rest __Header)
   (if (keywordp (car __Header))
       (send* _Header __Header)
     (progn
       (if __Header (setq _Header (car __Header)))
       _Header)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:imu_data
   (&rest __imu_data)
   (if (keywordp (car __imu_data))
       (send* _imu_data __imu_data)
     (progn
       (if __imu_data (setq _imu_data (car __imu_data)))
       _imu_data)))
  (:pitch_cmd
   (&optional __pitch_cmd)
   (if __pitch_cmd (setq _pitch_cmd __pitch_cmd)) _pitch_cmd)
  (:roll_cmd
   (&optional __roll_cmd)
   (if __roll_cmd (setq _roll_cmd __roll_cmd)) _roll_cmd)
  (:yaw_cmd
   (&optional __yaw_cmd)
   (if __yaw_cmd (setq _yaw_cmd __yaw_cmd)) _yaw_cmd)
  (:thrust_cmd
   (&optional __thrust_cmd)
   (if __thrust_cmd (setq _thrust_cmd __thrust_cmd)) _thrust_cmd)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:yaw_sp
   (&optional __yaw_sp)
   (if __yaw_sp (setq _yaw_sp __yaw_sp)) _yaw_sp)
  (:acc_cmd
   (&rest __acc_cmd)
   (if (keywordp (car __acc_cmd))
       (send* _acc_cmd __acc_cmd)
     (progn
       (if __acc_cmd (setq _acc_cmd (car __acc_cmd)))
       _acc_cmd)))
  (:vel_cmd
   (&rest __vel_cmd)
   (if (keywordp (car __vel_cmd))
       (send* _vel_cmd __vel_cmd)
     (progn
       (if __vel_cmd (setq _vel_cmd (car __vel_cmd)))
       _vel_cmd)))
  (:global_vel
   (&rest __global_vel)
   (if (keywordp (car __global_vel))
       (send* _global_vel __global_vel)
     (progn
       (if __global_vel (setq _global_vel (car __global_vel)))
       _global_vel)))
  (:pos_sp
   (&rest __pos_sp)
   (if (keywordp (car __pos_sp))
       (send* _pos_sp __pos_sp)
     (progn
       (if __pos_sp (setq _pos_sp (car __pos_sp)))
       _pos_sp)))
  (:ctrl_mode
   (&optional __ctrl_mode)
   (if __ctrl_mode (setq _ctrl_mode __ctrl_mode)) _ctrl_mode)
  (:use_fc_yaw
   (&optional (__use_fc_yaw :null))
   (if (not (eq __use_fc_yaw :null)) (setq _use_fc_yaw __use_fc_yaw)) _use_fc_yaw)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:max_vel
   (&rest __max_vel)
   (if (keywordp (car __max_vel))
       (send* _max_vel __max_vel)
     (progn
       (if __max_vel (setq _max_vel (car __max_vel)))
       _max_vel)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _Header
    (send _Header :serialization-length)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; sensor_msgs/Imu _imu_data
    (send _imu_data :serialization-length)
    ;; float32 _pitch_cmd
    4
    ;; float32 _roll_cmd
    4
    ;; float32 _yaw_cmd
    4
    ;; float32 _thrust_cmd
    4
    ;; float32 _pitch
    4
    ;; float32 _roll
    4
    ;; float32 _yaw
    4
    ;; float32 _yaw_sp
    4
    ;; geometry_msgs/Vector3 _acc_cmd
    (send _acc_cmd :serialization-length)
    ;; geometry_msgs/Vector3 _vel_cmd
    (send _vel_cmd :serialization-length)
    ;; geometry_msgs/Vector3 _global_vel
    (send _global_vel :serialization-length)
    ;; geometry_msgs/Vector3 _pos_sp
    (send _pos_sp :serialization-length)
    ;; uint32 _ctrl_mode
    4
    ;; bool _use_fc_yaw
    1
    ;; uint64 _count
    8
    ;; geometry_msgs/Vector3 _max_vel
    (send _max_vel :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _Header
       (send _Header :serialize s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; sensor_msgs/Imu _imu_data
       (send _imu_data :serialize s)
     ;; float32 _pitch_cmd
       (sys::poke _pitch_cmd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _roll_cmd
       (sys::poke _roll_cmd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw_cmd
       (sys::poke _yaw_cmd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _thrust_cmd
       (sys::poke _thrust_cmd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw_sp
       (sys::poke _yaw_sp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Vector3 _acc_cmd
       (send _acc_cmd :serialize s)
     ;; geometry_msgs/Vector3 _vel_cmd
       (send _vel_cmd :serialize s)
     ;; geometry_msgs/Vector3 _global_vel
       (send _global_vel :serialize s)
     ;; geometry_msgs/Vector3 _pos_sp
       (send _pos_sp :serialize s)
     ;; uint32 _ctrl_mode
       (write-long _ctrl_mode s)
     ;; bool _use_fc_yaw
       (if _use_fc_yaw (write-byte -1 s) (write-byte 0 s))
     ;; uint64 _count
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _count (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _count) (= (length (_count . bv)) 2)) ;; bignum
              (write-long (ash (elt (_count . bv) 0) 0) s)
              (write-long (ash (elt (_count . bv) 1) -1) s))
             ((and (class _count) (= (length (_count . bv)) 1)) ;; big1
              (write-long (elt (_count . bv) 0) s)
              (write-long (if (>= _count 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _count s)(write-long (if (>= _count 0) 0 #xffffffff) s)))
     ;; geometry_msgs/Vector3 _max_vel
       (send _max_vel :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _Header
     (send _Header :deserialize buf ptr-) (incf ptr- (send _Header :serialization-length))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; sensor_msgs/Imu _imu_data
     (send _imu_data :deserialize buf ptr-) (incf ptr- (send _imu_data :serialization-length))
   ;; float32 _pitch_cmd
     (setq _pitch_cmd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _roll_cmd
     (setq _roll_cmd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw_cmd
     (setq _yaw_cmd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _thrust_cmd
     (setq _thrust_cmd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pitch
     (setq _pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _roll
     (setq _roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw_sp
     (setq _yaw_sp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Vector3 _acc_cmd
     (send _acc_cmd :deserialize buf ptr-) (incf ptr- (send _acc_cmd :serialization-length))
   ;; geometry_msgs/Vector3 _vel_cmd
     (send _vel_cmd :deserialize buf ptr-) (incf ptr- (send _vel_cmd :serialization-length))
   ;; geometry_msgs/Vector3 _global_vel
     (send _global_vel :deserialize buf ptr-) (incf ptr- (send _global_vel :serialization-length))
   ;; geometry_msgs/Vector3 _pos_sp
     (send _pos_sp :deserialize buf ptr-) (incf ptr- (send _pos_sp :serialization-length))
   ;; uint32 _ctrl_mode
     (setq _ctrl_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _use_fc_yaw
     (setq _use_fc_yaw (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint64 _count
     
#+(or :alpha :irix6 :x86_64)
      (setf _count (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _count (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; geometry_msgs/Vector3 _max_vel
     (send _max_vel :deserialize buf ptr-) (incf ptr- (send _max_vel :serialization-length))
   ;;
   self)
  )

(setf (get swarmtal_msgs::drone_pos_control_state :md5sum-) "1284e85c66442b438c82756d23002796")
(setf (get swarmtal_msgs::drone_pos_control_state :datatype-) "swarmtal_msgs/drone_pos_control_state")
(setf (get swarmtal_msgs::drone_pos_control_state :definition-)
      "Header Header

geometry_msgs/Pose pose
sensor_msgs/Imu imu_data
float32 pitch_cmd
float32 roll_cmd
float32 yaw_cmd
float32 thrust_cmd

float32 pitch
float32 roll
float32 yaw

float32 yaw_sp

geometry_msgs/Vector3 acc_cmd
geometry_msgs/Vector3 vel_cmd
geometry_msgs/Vector3 global_vel

geometry_msgs/Vector3 pos_sp

uint32 ctrl_mode

bool use_fc_yaw

uint64 count

geometry_msgs/Vector3 max_vel
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

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
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
")



(provide :swarmtal_msgs/drone_pos_control_state "1284e85c66442b438c82756d23002796")


