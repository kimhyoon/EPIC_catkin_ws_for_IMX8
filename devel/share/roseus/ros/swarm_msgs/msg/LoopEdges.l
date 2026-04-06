;; Auto-generated. Do not edit!


(when (boundp 'swarm_msgs::LoopEdges)
  (if (not (find-package "SWARM_MSGS"))
    (make-package "SWARM_MSGS"))
  (shadow 'LoopEdges (find-package "SWARM_MSGS")))
(unless (find-package "SWARM_MSGS::LOOPEDGES")
  (make-package "SWARM_MSGS::LOOPEDGES"))

(in-package "ROS")
;;//! \htmlinclude LoopEdges.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass swarm_msgs::LoopEdges
  :super ros::object
  :slots (_header _loops ))

(defmethod swarm_msgs::LoopEdges
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:loops __loops) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _loops __loops)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:loops
   (&rest __loops)
   (if (keywordp (car __loops))
       (send* _loops __loops)
     (progn
       (if __loops (setq _loops (car __loops)))
       _loops)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; swarm_msgs/LoopEdge[] _loops
    (apply #'+ (send-all _loops :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; swarm_msgs/LoopEdge[] _loops
     (write-long (length _loops) s)
     (dolist (elem _loops)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; swarm_msgs/LoopEdge[] _loops
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _loops (let (r) (dotimes (i n) (push (instance swarm_msgs::LoopEdge :init) r)) r))
     (dolist (elem- _loops)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get swarm_msgs::LoopEdges :md5sum-) "90a7ebaed3f91cb5af316ff75b2d20ac")
(setf (get swarm_msgs::LoopEdges :datatype-) "swarm_msgs/LoopEdges")
(setf (get swarm_msgs::LoopEdges :definition-)
      "Header header
LoopEdge[] loops
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
MSG: swarm_msgs/LoopEdge
time ts_a
time ts_b
uint64 drone_id_a
uint64 drone_id_b
uint64 keyframe_id_a
uint64 keyframe_id_b
geometry_msgs/Pose relative_pose

geometry_msgs/Pose self_pose_a
geometry_msgs/Pose self_pose_b

geometry_msgs/Point pos_cov
geometry_msgs/Point ang_cov

#Details for loop
int32 pnp_inlier_num
bool is_4dof
uint64 id

#geometry_msgs/Point[] point_cloud_b
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



(provide :swarm_msgs/LoopEdges "90a7ebaed3f91cb5af316ff75b2d20ac")


