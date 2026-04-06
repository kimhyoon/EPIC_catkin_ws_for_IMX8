; Auto-generated. Do not edit!


(cl:in-package swarm_msgs-msg)


;//! \htmlinclude LoopEdges.msg.html

(cl:defclass <LoopEdges> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (loops
    :reader loops
    :initarg :loops
    :type (cl:vector swarm_msgs-msg:LoopEdge)
   :initform (cl:make-array 0 :element-type 'swarm_msgs-msg:LoopEdge :initial-element (cl:make-instance 'swarm_msgs-msg:LoopEdge))))
)

(cl:defclass LoopEdges (<LoopEdges>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoopEdges>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoopEdges)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swarm_msgs-msg:<LoopEdges> is deprecated: use swarm_msgs-msg:LoopEdges instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LoopEdges>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:header-val is deprecated.  Use swarm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'loops-val :lambda-list '(m))
(cl:defmethod loops-val ((m <LoopEdges>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:loops-val is deprecated.  Use swarm_msgs-msg:loops instead.")
  (loops m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoopEdges>) ostream)
  "Serializes a message object of type '<LoopEdges>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'loops))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'loops))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoopEdges>) istream)
  "Deserializes a message object of type '<LoopEdges>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'loops) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'loops)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'swarm_msgs-msg:LoopEdge))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoopEdges>)))
  "Returns string type for a message object of type '<LoopEdges>"
  "swarm_msgs/LoopEdges")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoopEdges)))
  "Returns string type for a message object of type 'LoopEdges"
  "swarm_msgs/LoopEdges")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoopEdges>)))
  "Returns md5sum for a message object of type '<LoopEdges>"
  "90a7ebaed3f91cb5af316ff75b2d20ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoopEdges)))
  "Returns md5sum for a message object of type 'LoopEdges"
  "90a7ebaed3f91cb5af316ff75b2d20ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoopEdges>)))
  "Returns full string definition for message of type '<LoopEdges>"
  (cl:format cl:nil "Header header~%LoopEdge[] loops~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: swarm_msgs/LoopEdge~%time ts_a~%time ts_b~%uint64 drone_id_a~%uint64 drone_id_b~%uint64 keyframe_id_a~%uint64 keyframe_id_b~%geometry_msgs/Pose relative_pose~%~%geometry_msgs/Pose self_pose_a~%geometry_msgs/Pose self_pose_b~%~%geometry_msgs/Point pos_cov~%geometry_msgs/Point ang_cov~%~%#Details for loop~%int32 pnp_inlier_num~%bool is_4dof~%uint64 id~%~%#geometry_msgs/Point[] point_cloud_b~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoopEdges)))
  "Returns full string definition for message of type 'LoopEdges"
  (cl:format cl:nil "Header header~%LoopEdge[] loops~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: swarm_msgs/LoopEdge~%time ts_a~%time ts_b~%uint64 drone_id_a~%uint64 drone_id_b~%uint64 keyframe_id_a~%uint64 keyframe_id_b~%geometry_msgs/Pose relative_pose~%~%geometry_msgs/Pose self_pose_a~%geometry_msgs/Pose self_pose_b~%~%geometry_msgs/Point pos_cov~%geometry_msgs/Point ang_cov~%~%#Details for loop~%int32 pnp_inlier_num~%bool is_4dof~%uint64 id~%~%#geometry_msgs/Point[] point_cloud_b~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoopEdges>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'loops) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoopEdges>))
  "Converts a ROS message object to a list"
  (cl:list 'LoopEdges
    (cl:cons ':header (header msg))
    (cl:cons ':loops (loops msg))
))
