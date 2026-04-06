;; Auto-generated. Do not edit!


(when (boundp 'swarm_msgs::swarm_frame)
  (if (not (find-package "SWARM_MSGS"))
    (make-package "SWARM_MSGS"))
  (shadow 'swarm_frame (find-package "SWARM_MSGS")))
(unless (find-package "SWARM_MSGS::SWARM_FRAME")
  (make-package "SWARM_MSGS::SWARM_FRAME"))

(in-package "ROS")
;;//! \htmlinclude swarm_frame.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass swarm_msgs::swarm_frame
  :super ros::object
  :slots (_header _node_frames _self_id ))

(defmethod swarm_msgs::swarm_frame
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:node_frames __node_frames) ())
    ((:self_id __self_id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _node_frames __node_frames)
   (setq _self_id (round __self_id))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:node_frames
   (&rest __node_frames)
   (if (keywordp (car __node_frames))
       (send* _node_frames __node_frames)
     (progn
       (if __node_frames (setq _node_frames (car __node_frames)))
       _node_frames)))
  (:self_id
   (&optional __self_id)
   (if __self_id (setq _self_id __self_id)) _self_id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; swarm_msgs/node_frame[] _node_frames
    (apply #'+ (send-all _node_frames :serialization-length)) 4
    ;; int32 _self_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; swarm_msgs/node_frame[] _node_frames
     (write-long (length _node_frames) s)
     (dolist (elem _node_frames)
       (send elem :serialize s)
       )
     ;; int32 _self_id
       (write-long _self_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; swarm_msgs/node_frame[] _node_frames
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _node_frames (let (r) (dotimes (i n) (push (instance swarm_msgs::node_frame :init) r)) r))
     (dolist (elem- _node_frames)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32 _self_id
     (setq _self_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get swarm_msgs::swarm_frame :md5sum-) "04c8bdaacf2ca38f8b270c8aadec114d")
(setf (get swarm_msgs::swarm_frame :datatype-) "swarm_msgs/swarm_frame")
(setf (get swarm_msgs::swarm_frame :definition-)
      "Header header
node_frame[] node_frames
int32 self_id
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
MSG: swarm_msgs/node_frame
Header header
int32 drone_id #This is drone ID!!!
uint64 keyframe_id

geometry_msgs/Point position
geometry_msgs/Point velocity
float32 yaw
float32 pitch
float32 roll
geometry_msgs/Quaternion quat

bool vo_available
int32[] dismap_ids
float64[] dismap_dists
node_detected_xyzyaw[] detected_xyzyaws
node_detected[] detected
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
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

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

")



(provide :swarm_msgs/swarm_frame "04c8bdaacf2ca38f8b270c8aadec114d")


