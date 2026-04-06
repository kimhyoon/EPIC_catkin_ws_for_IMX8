;; Auto-generated. Do not edit!


(when (boundp 'swarm_msgs::node_detected_xyzyaw)
  (if (not (find-package "SWARM_MSGS"))
    (make-package "SWARM_MSGS"))
  (shadow 'node_detected_xyzyaw (find-package "SWARM_MSGS")))
(unless (find-package "SWARM_MSGS::NODE_DETECTED_XYZYAW")
  (make-package "SWARM_MSGS::NODE_DETECTED_XYZYAW"))

(in-package "ROS")
;;//! \htmlinclude node_detected_xyzyaw.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass swarm_msgs::node_detected_xyzyaw
  :super ros::object
  :slots (_header _id _self_drone_id _remote_drone_id _dpos _dpos_std _dyaw _dyaw_cov _enable_scale _is_yaw_valid _probaility _inv_dep _local_pose_self _local_pose_remote _camera_extrinsic ))

(defmethod swarm_msgs::node_detected_xyzyaw
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:self_drone_id __self_drone_id) 0)
    ((:remote_drone_id __remote_drone_id) 0)
    ((:dpos __dpos) (instance geometry_msgs::Point :init))
    ((:dpos_std __dpos_std) (instance geometry_msgs::Point :init))
    ((:dyaw __dyaw) 0.0)
    ((:dyaw_cov __dyaw_cov) 0.0)
    ((:enable_scale __enable_scale) nil)
    ((:is_yaw_valid __is_yaw_valid) nil)
    ((:probaility __probaility) 0.0)
    ((:inv_dep __inv_dep) 0.0)
    ((:local_pose_self __local_pose_self) (instance geometry_msgs::Pose :init))
    ((:local_pose_remote __local_pose_remote) (instance geometry_msgs::Pose :init))
    ((:camera_extrinsic __camera_extrinsic) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _self_drone_id (round __self_drone_id))
   (setq _remote_drone_id (round __remote_drone_id))
   (setq _dpos __dpos)
   (setq _dpos_std __dpos_std)
   (setq _dyaw (float __dyaw))
   (setq _dyaw_cov (float __dyaw_cov))
   (setq _enable_scale __enable_scale)
   (setq _is_yaw_valid __is_yaw_valid)
   (setq _probaility (float __probaility))
   (setq _inv_dep (float __inv_dep))
   (setq _local_pose_self __local_pose_self)
   (setq _local_pose_remote __local_pose_remote)
   (setq _camera_extrinsic __camera_extrinsic)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:self_drone_id
   (&optional __self_drone_id)
   (if __self_drone_id (setq _self_drone_id __self_drone_id)) _self_drone_id)
  (:remote_drone_id
   (&optional __remote_drone_id)
   (if __remote_drone_id (setq _remote_drone_id __remote_drone_id)) _remote_drone_id)
  (:dpos
   (&rest __dpos)
   (if (keywordp (car __dpos))
       (send* _dpos __dpos)
     (progn
       (if __dpos (setq _dpos (car __dpos)))
       _dpos)))
  (:dpos_std
   (&rest __dpos_std)
   (if (keywordp (car __dpos_std))
       (send* _dpos_std __dpos_std)
     (progn
       (if __dpos_std (setq _dpos_std (car __dpos_std)))
       _dpos_std)))
  (:dyaw
   (&optional __dyaw)
   (if __dyaw (setq _dyaw __dyaw)) _dyaw)
  (:dyaw_cov
   (&optional __dyaw_cov)
   (if __dyaw_cov (setq _dyaw_cov __dyaw_cov)) _dyaw_cov)
  (:enable_scale
   (&optional (__enable_scale :null))
   (if (not (eq __enable_scale :null)) (setq _enable_scale __enable_scale)) _enable_scale)
  (:is_yaw_valid
   (&optional (__is_yaw_valid :null))
   (if (not (eq __is_yaw_valid :null)) (setq _is_yaw_valid __is_yaw_valid)) _is_yaw_valid)
  (:probaility
   (&optional __probaility)
   (if __probaility (setq _probaility __probaility)) _probaility)
  (:inv_dep
   (&optional __inv_dep)
   (if __inv_dep (setq _inv_dep __inv_dep)) _inv_dep)
  (:local_pose_self
   (&rest __local_pose_self)
   (if (keywordp (car __local_pose_self))
       (send* _local_pose_self __local_pose_self)
     (progn
       (if __local_pose_self (setq _local_pose_self (car __local_pose_self)))
       _local_pose_self)))
  (:local_pose_remote
   (&rest __local_pose_remote)
   (if (keywordp (car __local_pose_remote))
       (send* _local_pose_remote __local_pose_remote)
     (progn
       (if __local_pose_remote (setq _local_pose_remote (car __local_pose_remote)))
       _local_pose_remote)))
  (:camera_extrinsic
   (&rest __camera_extrinsic)
   (if (keywordp (car __camera_extrinsic))
       (send* _camera_extrinsic __camera_extrinsic)
     (progn
       (if __camera_extrinsic (setq _camera_extrinsic (car __camera_extrinsic)))
       _camera_extrinsic)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int64 _id
    8
    ;; int32 _self_drone_id
    4
    ;; int32 _remote_drone_id
    4
    ;; geometry_msgs/Point _dpos
    (send _dpos :serialization-length)
    ;; geometry_msgs/Point _dpos_std
    (send _dpos_std :serialization-length)
    ;; float64 _dyaw
    8
    ;; float64 _dyaw_cov
    8
    ;; bool _enable_scale
    1
    ;; bool _is_yaw_valid
    1
    ;; float64 _probaility
    8
    ;; float64 _inv_dep
    8
    ;; geometry_msgs/Pose _local_pose_self
    (send _local_pose_self :serialization-length)
    ;; geometry_msgs/Pose _local_pose_remote
    (send _local_pose_remote :serialization-length)
    ;; geometry_msgs/Pose _camera_extrinsic
    (send _camera_extrinsic :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int64 _id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _id) (= (length (_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_id . bv) 0) 0) s)
              (write-long (ash (elt (_id . bv) 1) -1) s))
             ((and (class _id) (= (length (_id . bv)) 1)) ;; big1
              (write-long (elt (_id . bv) 0) s)
              (write-long (if (>= _id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _id s)(write-long (if (>= _id 0) 0 #xffffffff) s)))
     ;; int32 _self_drone_id
       (write-long _self_drone_id s)
     ;; int32 _remote_drone_id
       (write-long _remote_drone_id s)
     ;; geometry_msgs/Point _dpos
       (send _dpos :serialize s)
     ;; geometry_msgs/Point _dpos_std
       (send _dpos_std :serialize s)
     ;; float64 _dyaw
       (sys::poke _dyaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dyaw_cov
       (sys::poke _dyaw_cov (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _enable_scale
       (if _enable_scale (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_yaw_valid
       (if _is_yaw_valid (write-byte -1 s) (write-byte 0 s))
     ;; float64 _probaility
       (sys::poke _probaility (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _inv_dep
       (sys::poke _inv_dep (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Pose _local_pose_self
       (send _local_pose_self :serialize s)
     ;; geometry_msgs/Pose _local_pose_remote
       (send _local_pose_remote :serialize s)
     ;; geometry_msgs/Pose _camera_extrinsic
       (send _camera_extrinsic :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int64 _id
#+(or :alpha :irix6 :x86_64)
      (setf _id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int32 _self_drone_id
     (setq _self_drone_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _remote_drone_id
     (setq _remote_drone_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point _dpos
     (send _dpos :deserialize buf ptr-) (incf ptr- (send _dpos :serialization-length))
   ;; geometry_msgs/Point _dpos_std
     (send _dpos_std :deserialize buf ptr-) (incf ptr- (send _dpos_std :serialization-length))
   ;; float64 _dyaw
     (setq _dyaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dyaw_cov
     (setq _dyaw_cov (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _enable_scale
     (setq _enable_scale (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_yaw_valid
     (setq _is_yaw_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _probaility
     (setq _probaility (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _inv_dep
     (setq _inv_dep (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Pose _local_pose_self
     (send _local_pose_self :deserialize buf ptr-) (incf ptr- (send _local_pose_self :serialization-length))
   ;; geometry_msgs/Pose _local_pose_remote
     (send _local_pose_remote :deserialize buf ptr-) (incf ptr- (send _local_pose_remote :serialization-length))
   ;; geometry_msgs/Pose _camera_extrinsic
     (send _camera_extrinsic :deserialize buf ptr-) (incf ptr- (send _camera_extrinsic :serialization-length))
   ;;
   self)
  )

(setf (get swarm_msgs::node_detected_xyzyaw :md5sum-) "153d8a388ec70ddfe9950d5a9c645eda")
(setf (get swarm_msgs::node_detected_xyzyaw :datatype-) "swarm_msgs/node_detected_xyzyaw")
(setf (get swarm_msgs::node_detected_xyzyaw :definition-)
      "Header header
int64 id
int32 self_drone_id
int32 remote_drone_id
geometry_msgs/Point dpos
geometry_msgs/Point dpos_std

float64 dyaw
float64 dyaw_cov
bool enable_scale
bool is_yaw_valid
float64 probaility
float64 inv_dep

geometry_msgs/Pose local_pose_self #Here is camera pose, not IMU pose.
geometry_msgs/Pose local_pose_remote

geometry_msgs/Pose camera_extrinsic
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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :swarm_msgs/node_detected_xyzyaw "153d8a388ec70ddfe9950d5a9c645eda")


