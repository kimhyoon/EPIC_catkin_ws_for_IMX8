;; Auto-generated. Do not edit!


(when (boundp 'swarm_msgs::node_detected)
  (if (not (find-package "SWARM_MSGS"))
    (make-package "SWARM_MSGS"))
  (shadow 'node_detected (find-package "SWARM_MSGS")))
(unless (find-package "SWARM_MSGS::NODE_DETECTED")
  (make-package "SWARM_MSGS::NODE_DETECTED"))

(in-package "ROS")
;;//! \htmlinclude node_detected.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass swarm_msgs::node_detected
  :super ros::object
  :slots (_header _id _self_drone_id _remote_drone_id _relative_pose _is_2d_detect _is_yaw_valid _probaility _local_pose_self _local_pose_remote _dof_4 ))

(defmethod swarm_msgs::node_detected
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:self_drone_id __self_drone_id) 0)
    ((:remote_drone_id __remote_drone_id) 0)
    ((:relative_pose __relative_pose) (instance geometry_msgs::PoseWithCovariance :init))
    ((:is_2d_detect __is_2d_detect) nil)
    ((:is_yaw_valid __is_yaw_valid) nil)
    ((:probaility __probaility) 0.0)
    ((:local_pose_self __local_pose_self) (instance geometry_msgs::Pose :init))
    ((:local_pose_remote __local_pose_remote) (instance geometry_msgs::Pose :init))
    ((:dof_4 __dof_4) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _self_drone_id (round __self_drone_id))
   (setq _remote_drone_id (round __remote_drone_id))
   (setq _relative_pose __relative_pose)
   (setq _is_2d_detect __is_2d_detect)
   (setq _is_yaw_valid __is_yaw_valid)
   (setq _probaility (float __probaility))
   (setq _local_pose_self __local_pose_self)
   (setq _local_pose_remote __local_pose_remote)
   (setq _dof_4 __dof_4)
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
  (:relative_pose
   (&rest __relative_pose)
   (if (keywordp (car __relative_pose))
       (send* _relative_pose __relative_pose)
     (progn
       (if __relative_pose (setq _relative_pose (car __relative_pose)))
       _relative_pose)))
  (:is_2d_detect
   (&optional (__is_2d_detect :null))
   (if (not (eq __is_2d_detect :null)) (setq _is_2d_detect __is_2d_detect)) _is_2d_detect)
  (:is_yaw_valid
   (&optional (__is_yaw_valid :null))
   (if (not (eq __is_yaw_valid :null)) (setq _is_yaw_valid __is_yaw_valid)) _is_yaw_valid)
  (:probaility
   (&optional __probaility)
   (if __probaility (setq _probaility __probaility)) _probaility)
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
  (:dof_4
   (&optional (__dof_4 :null))
   (if (not (eq __dof_4 :null)) (setq _dof_4 __dof_4)) _dof_4)
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
    ;; geometry_msgs/PoseWithCovariance _relative_pose
    (send _relative_pose :serialization-length)
    ;; bool _is_2d_detect
    1
    ;; bool _is_yaw_valid
    1
    ;; float64 _probaility
    8
    ;; geometry_msgs/Pose _local_pose_self
    (send _local_pose_self :serialization-length)
    ;; geometry_msgs/Pose _local_pose_remote
    (send _local_pose_remote :serialization-length)
    ;; bool _dof_4
    1
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
     ;; geometry_msgs/PoseWithCovariance _relative_pose
       (send _relative_pose :serialize s)
     ;; bool _is_2d_detect
       (if _is_2d_detect (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_yaw_valid
       (if _is_yaw_valid (write-byte -1 s) (write-byte 0 s))
     ;; float64 _probaility
       (sys::poke _probaility (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Pose _local_pose_self
       (send _local_pose_self :serialize s)
     ;; geometry_msgs/Pose _local_pose_remote
       (send _local_pose_remote :serialize s)
     ;; bool _dof_4
       (if _dof_4 (write-byte -1 s) (write-byte 0 s))
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
   ;; geometry_msgs/PoseWithCovariance _relative_pose
     (send _relative_pose :deserialize buf ptr-) (incf ptr- (send _relative_pose :serialization-length))
   ;; bool _is_2d_detect
     (setq _is_2d_detect (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_yaw_valid
     (setq _is_yaw_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _probaility
     (setq _probaility (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Pose _local_pose_self
     (send _local_pose_self :deserialize buf ptr-) (incf ptr- (send _local_pose_self :serialization-length))
   ;; geometry_msgs/Pose _local_pose_remote
     (send _local_pose_remote :deserialize buf ptr-) (incf ptr- (send _local_pose_remote :serialization-length))
   ;; bool _dof_4
     (setq _dof_4 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get swarm_msgs::node_detected :md5sum-) "d83c2e1345fc81767f3cd9584b06399b")
(setf (get swarm_msgs::node_detected :datatype-) "swarm_msgs/node_detected")
(setf (get swarm_msgs::node_detected :definition-)
      "Header header
int64 id
int32 self_drone_id
int32 remote_drone_id
geometry_msgs/PoseWithCovariance relative_pose #If 2d detect, gives x=1
bool is_2d_detect
bool is_yaw_valid
float64 probaility
geometry_msgs/Pose local_pose_self
geometry_msgs/Pose local_pose_remote
bool dof_4
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
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

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

")



(provide :swarm_msgs/node_detected "d83c2e1345fc81767f3cd9584b06399b")


