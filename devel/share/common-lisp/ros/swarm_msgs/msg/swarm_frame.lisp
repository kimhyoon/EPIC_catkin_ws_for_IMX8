; Auto-generated. Do not edit!


(cl:in-package swarm_msgs-msg)


;//! \htmlinclude swarm_frame.msg.html

(cl:defclass <swarm_frame> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (node_frames
    :reader node_frames
    :initarg :node_frames
    :type (cl:vector swarm_msgs-msg:node_frame)
   :initform (cl:make-array 0 :element-type 'swarm_msgs-msg:node_frame :initial-element (cl:make-instance 'swarm_msgs-msg:node_frame)))
   (self_id
    :reader self_id
    :initarg :self_id
    :type cl:integer
    :initform 0))
)

(cl:defclass swarm_frame (<swarm_frame>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <swarm_frame>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'swarm_frame)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swarm_msgs-msg:<swarm_frame> is deprecated: use swarm_msgs-msg:swarm_frame instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <swarm_frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:header-val is deprecated.  Use swarm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'node_frames-val :lambda-list '(m))
(cl:defmethod node_frames-val ((m <swarm_frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:node_frames-val is deprecated.  Use swarm_msgs-msg:node_frames instead.")
  (node_frames m))

(cl:ensure-generic-function 'self_id-val :lambda-list '(m))
(cl:defmethod self_id-val ((m <swarm_frame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:self_id-val is deprecated.  Use swarm_msgs-msg:self_id instead.")
  (self_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <swarm_frame>) ostream)
  "Serializes a message object of type '<swarm_frame>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'node_frames))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'node_frames))
  (cl:let* ((signed (cl:slot-value msg 'self_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <swarm_frame>) istream)
  "Deserializes a message object of type '<swarm_frame>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'node_frames) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'node_frames)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'swarm_msgs-msg:node_frame))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'self_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<swarm_frame>)))
  "Returns string type for a message object of type '<swarm_frame>"
  "swarm_msgs/swarm_frame")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'swarm_frame)))
  "Returns string type for a message object of type 'swarm_frame"
  "swarm_msgs/swarm_frame")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<swarm_frame>)))
  "Returns md5sum for a message object of type '<swarm_frame>"
  "04c8bdaacf2ca38f8b270c8aadec114d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'swarm_frame)))
  "Returns md5sum for a message object of type 'swarm_frame"
  "04c8bdaacf2ca38f8b270c8aadec114d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<swarm_frame>)))
  "Returns full string definition for message of type '<swarm_frame>"
  (cl:format cl:nil "Header header~%node_frame[] node_frames~%int32 self_id~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: swarm_msgs/node_frame~%Header header~%int32 drone_id #This is drone ID!!!~%uint64 keyframe_id~%~%geometry_msgs/Point position~%geometry_msgs/Point velocity~%float32 yaw~%float32 pitch~%float32 roll~%geometry_msgs/Quaternion quat~%~%bool vo_available~%int32[] dismap_ids~%float64[] dismap_dists~%node_detected_xyzyaw[] detected_xyzyaws~%node_detected[] detected~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: swarm_msgs/node_detected_xyzyaw~%Header header~%int64 id~%int32 self_drone_id~%int32 remote_drone_id~%geometry_msgs/Point dpos~%geometry_msgs/Point dpos_std~%~%float64 dyaw~%float64 dyaw_cov~%bool enable_scale~%bool is_yaw_valid~%float64 probaility~%float64 inv_dep~%~%geometry_msgs/Pose local_pose_self #Here is camera pose, not IMU pose.~%geometry_msgs/Pose local_pose_remote~%~%geometry_msgs/Pose camera_extrinsic~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: swarm_msgs/node_detected~%Header header~%int64 id~%int32 self_drone_id~%int32 remote_drone_id~%geometry_msgs/PoseWithCovariance relative_pose #If 2d detect, gives x=1~%bool is_2d_detect~%bool is_yaw_valid~%float64 probaility~%geometry_msgs/Pose local_pose_self~%geometry_msgs/Pose local_pose_remote~%bool dof_4~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'swarm_frame)))
  "Returns full string definition for message of type 'swarm_frame"
  (cl:format cl:nil "Header header~%node_frame[] node_frames~%int32 self_id~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: swarm_msgs/node_frame~%Header header~%int32 drone_id #This is drone ID!!!~%uint64 keyframe_id~%~%geometry_msgs/Point position~%geometry_msgs/Point velocity~%float32 yaw~%float32 pitch~%float32 roll~%geometry_msgs/Quaternion quat~%~%bool vo_available~%int32[] dismap_ids~%float64[] dismap_dists~%node_detected_xyzyaw[] detected_xyzyaws~%node_detected[] detected~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: swarm_msgs/node_detected_xyzyaw~%Header header~%int64 id~%int32 self_drone_id~%int32 remote_drone_id~%geometry_msgs/Point dpos~%geometry_msgs/Point dpos_std~%~%float64 dyaw~%float64 dyaw_cov~%bool enable_scale~%bool is_yaw_valid~%float64 probaility~%float64 inv_dep~%~%geometry_msgs/Pose local_pose_self #Here is camera pose, not IMU pose.~%geometry_msgs/Pose local_pose_remote~%~%geometry_msgs/Pose camera_extrinsic~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: swarm_msgs/node_detected~%Header header~%int64 id~%int32 self_drone_id~%int32 remote_drone_id~%geometry_msgs/PoseWithCovariance relative_pose #If 2d detect, gives x=1~%bool is_2d_detect~%bool is_yaw_valid~%float64 probaility~%geometry_msgs/Pose local_pose_self~%geometry_msgs/Pose local_pose_remote~%bool dof_4~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <swarm_frame>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'node_frames) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <swarm_frame>))
  "Converts a ROS message object to a list"
  (cl:list 'swarm_frame
    (cl:cons ':header (header msg))
    (cl:cons ':node_frames (node_frames msg))
    (cl:cons ':self_id (self_id msg))
))
