;; Auto-generated. Do not edit!


(when (boundp 'swarm_msgs::swarm_detected)
  (if (not (find-package "SWARM_MSGS"))
    (make-package "SWARM_MSGS"))
  (shadow 'swarm_detected (find-package "SWARM_MSGS")))
(unless (find-package "SWARM_MSGS::SWARM_DETECTED")
  (make-package "SWARM_MSGS::SWARM_DETECTED"))

(in-package "ROS")
;;//! \htmlinclude swarm_detected.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass swarm_msgs::swarm_detected
  :super ros::object
  :slots (_header _self_drone_id _detected_nodes _detected_nodes_xyz_yaw _is_6d_detect ))

(defmethod swarm_msgs::swarm_detected
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:self_drone_id __self_drone_id) 0)
    ((:detected_nodes __detected_nodes) ())
    ((:detected_nodes_xyz_yaw __detected_nodes_xyz_yaw) ())
    ((:is_6d_detect __is_6d_detect) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _self_drone_id (round __self_drone_id))
   (setq _detected_nodes __detected_nodes)
   (setq _detected_nodes_xyz_yaw __detected_nodes_xyz_yaw)
   (setq _is_6d_detect __is_6d_detect)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:self_drone_id
   (&optional __self_drone_id)
   (if __self_drone_id (setq _self_drone_id __self_drone_id)) _self_drone_id)
  (:detected_nodes
   (&rest __detected_nodes)
   (if (keywordp (car __detected_nodes))
       (send* _detected_nodes __detected_nodes)
     (progn
       (if __detected_nodes (setq _detected_nodes (car __detected_nodes)))
       _detected_nodes)))
  (:detected_nodes_xyz_yaw
   (&rest __detected_nodes_xyz_yaw)
   (if (keywordp (car __detected_nodes_xyz_yaw))
       (send* _detected_nodes_xyz_yaw __detected_nodes_xyz_yaw)
     (progn
       (if __detected_nodes_xyz_yaw (setq _detected_nodes_xyz_yaw (car __detected_nodes_xyz_yaw)))
       _detected_nodes_xyz_yaw)))
  (:is_6d_detect
   (&optional (__is_6d_detect :null))
   (if (not (eq __is_6d_detect :null)) (setq _is_6d_detect __is_6d_detect)) _is_6d_detect)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _self_drone_id
    4
    ;; swarm_msgs/node_detected[] _detected_nodes
    (apply #'+ (send-all _detected_nodes :serialization-length)) 4
    ;; swarm_msgs/node_detected_xyzyaw[] _detected_nodes_xyz_yaw
    (apply #'+ (send-all _detected_nodes_xyz_yaw :serialization-length)) 4
    ;; bool _is_6d_detect
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _self_drone_id
       (write-long _self_drone_id s)
     ;; swarm_msgs/node_detected[] _detected_nodes
     (write-long (length _detected_nodes) s)
     (dolist (elem _detected_nodes)
       (send elem :serialize s)
       )
     ;; swarm_msgs/node_detected_xyzyaw[] _detected_nodes_xyz_yaw
     (write-long (length _detected_nodes_xyz_yaw) s)
     (dolist (elem _detected_nodes_xyz_yaw)
       (send elem :serialize s)
       )
     ;; bool _is_6d_detect
       (if _is_6d_detect (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _self_drone_id
     (setq _self_drone_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; swarm_msgs/node_detected[] _detected_nodes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _detected_nodes (let (r) (dotimes (i n) (push (instance swarm_msgs::node_detected :init) r)) r))
     (dolist (elem- _detected_nodes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; swarm_msgs/node_detected_xyzyaw[] _detected_nodes_xyz_yaw
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _detected_nodes_xyz_yaw (let (r) (dotimes (i n) (push (instance swarm_msgs::node_detected_xyzyaw :init) r)) r))
     (dolist (elem- _detected_nodes_xyz_yaw)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _is_6d_detect
     (setq _is_6d_detect (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get swarm_msgs::swarm_detected :md5sum-) "37a9e13432a599762a05d5f1e0fb11f1")
(setf (get swarm_msgs::swarm_detected :datatype-) "swarm_msgs/swarm_detected")
(setf (get swarm_msgs::swarm_detected :definition-)
      "Header header
int32 self_drone_id
node_detected[] detected_nodes
node_detected_xyzyaw[] detected_nodes_xyz_yaw

bool is_6d_detect #if only xyzyaw; false then only xyzyaw
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
MSG: swarm_msgs/node_detected
Header header
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

================================================================================
MSG: swarm_msgs/node_detected_xyzyaw
Header header
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
")



(provide :swarm_msgs/swarm_detected "37a9e13432a599762a05d5f1e0fb11f1")


