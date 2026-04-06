; Auto-generated. Do not edit!


(cl:in-package swarm_msgs-msg)


;//! \htmlinclude node_detected.msg.html

(cl:defclass <node_detected> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (self_drone_id
    :reader self_drone_id
    :initarg :self_drone_id
    :type cl:integer
    :initform 0)
   (remote_drone_id
    :reader remote_drone_id
    :initarg :remote_drone_id
    :type cl:integer
    :initform 0)
   (relative_pose
    :reader relative_pose
    :initarg :relative_pose
    :type geometry_msgs-msg:PoseWithCovariance
    :initform (cl:make-instance 'geometry_msgs-msg:PoseWithCovariance))
   (is_2d_detect
    :reader is_2d_detect
    :initarg :is_2d_detect
    :type cl:boolean
    :initform cl:nil)
   (is_yaw_valid
    :reader is_yaw_valid
    :initarg :is_yaw_valid
    :type cl:boolean
    :initform cl:nil)
   (probaility
    :reader probaility
    :initarg :probaility
    :type cl:float
    :initform 0.0)
   (local_pose_self
    :reader local_pose_self
    :initarg :local_pose_self
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (local_pose_remote
    :reader local_pose_remote
    :initarg :local_pose_remote
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (dof_4
    :reader dof_4
    :initarg :dof_4
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass node_detected (<node_detected>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_detected>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_detected)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swarm_msgs-msg:<node_detected> is deprecated: use swarm_msgs-msg:node_detected instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <node_detected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:header-val is deprecated.  Use swarm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <node_detected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:id-val is deprecated.  Use swarm_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'self_drone_id-val :lambda-list '(m))
(cl:defmethod self_drone_id-val ((m <node_detected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:self_drone_id-val is deprecated.  Use swarm_msgs-msg:self_drone_id instead.")
  (self_drone_id m))

(cl:ensure-generic-function 'remote_drone_id-val :lambda-list '(m))
(cl:defmethod remote_drone_id-val ((m <node_detected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:remote_drone_id-val is deprecated.  Use swarm_msgs-msg:remote_drone_id instead.")
  (remote_drone_id m))

(cl:ensure-generic-function 'relative_pose-val :lambda-list '(m))
(cl:defmethod relative_pose-val ((m <node_detected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:relative_pose-val is deprecated.  Use swarm_msgs-msg:relative_pose instead.")
  (relative_pose m))

(cl:ensure-generic-function 'is_2d_detect-val :lambda-list '(m))
(cl:defmethod is_2d_detect-val ((m <node_detected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:is_2d_detect-val is deprecated.  Use swarm_msgs-msg:is_2d_detect instead.")
  (is_2d_detect m))

(cl:ensure-generic-function 'is_yaw_valid-val :lambda-list '(m))
(cl:defmethod is_yaw_valid-val ((m <node_detected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:is_yaw_valid-val is deprecated.  Use swarm_msgs-msg:is_yaw_valid instead.")
  (is_yaw_valid m))

(cl:ensure-generic-function 'probaility-val :lambda-list '(m))
(cl:defmethod probaility-val ((m <node_detected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:probaility-val is deprecated.  Use swarm_msgs-msg:probaility instead.")
  (probaility m))

(cl:ensure-generic-function 'local_pose_self-val :lambda-list '(m))
(cl:defmethod local_pose_self-val ((m <node_detected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:local_pose_self-val is deprecated.  Use swarm_msgs-msg:local_pose_self instead.")
  (local_pose_self m))

(cl:ensure-generic-function 'local_pose_remote-val :lambda-list '(m))
(cl:defmethod local_pose_remote-val ((m <node_detected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:local_pose_remote-val is deprecated.  Use swarm_msgs-msg:local_pose_remote instead.")
  (local_pose_remote m))

(cl:ensure-generic-function 'dof_4-val :lambda-list '(m))
(cl:defmethod dof_4-val ((m <node_detected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:dof_4-val is deprecated.  Use swarm_msgs-msg:dof_4 instead.")
  (dof_4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_detected>) ostream)
  "Serializes a message object of type '<node_detected>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'self_drone_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'remote_drone_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relative_pose) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_2d_detect) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_yaw_valid) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'probaility))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'local_pose_self) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'local_pose_remote) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'dof_4) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_detected>) istream)
  "Deserializes a message object of type '<node_detected>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'self_drone_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'remote_drone_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relative_pose) istream)
    (cl:setf (cl:slot-value msg 'is_2d_detect) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_yaw_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'probaility) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'local_pose_self) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'local_pose_remote) istream)
    (cl:setf (cl:slot-value msg 'dof_4) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_detected>)))
  "Returns string type for a message object of type '<node_detected>"
  "swarm_msgs/node_detected")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_detected)))
  "Returns string type for a message object of type 'node_detected"
  "swarm_msgs/node_detected")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_detected>)))
  "Returns md5sum for a message object of type '<node_detected>"
  "d83c2e1345fc81767f3cd9584b06399b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_detected)))
  "Returns md5sum for a message object of type 'node_detected"
  "d83c2e1345fc81767f3cd9584b06399b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_detected>)))
  "Returns full string definition for message of type '<node_detected>"
  (cl:format cl:nil "Header header~%int64 id~%int32 self_drone_id~%int32 remote_drone_id~%geometry_msgs/PoseWithCovariance relative_pose #If 2d detect, gives x=1~%bool is_2d_detect~%bool is_yaw_valid~%float64 probaility~%geometry_msgs/Pose local_pose_self~%geometry_msgs/Pose local_pose_remote~%bool dof_4~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_detected)))
  "Returns full string definition for message of type 'node_detected"
  (cl:format cl:nil "Header header~%int64 id~%int32 self_drone_id~%int32 remote_drone_id~%geometry_msgs/PoseWithCovariance relative_pose #If 2d detect, gives x=1~%bool is_2d_detect~%bool is_yaw_valid~%float64 probaility~%geometry_msgs/Pose local_pose_self~%geometry_msgs/Pose local_pose_remote~%bool dof_4~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_detected>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relative_pose))
     1
     1
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'local_pose_self))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'local_pose_remote))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_detected>))
  "Converts a ROS message object to a list"
  (cl:list 'node_detected
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
    (cl:cons ':self_drone_id (self_drone_id msg))
    (cl:cons ':remote_drone_id (remote_drone_id msg))
    (cl:cons ':relative_pose (relative_pose msg))
    (cl:cons ':is_2d_detect (is_2d_detect msg))
    (cl:cons ':is_yaw_valid (is_yaw_valid msg))
    (cl:cons ':probaility (probaility msg))
    (cl:cons ':local_pose_self (local_pose_self msg))
    (cl:cons ':local_pose_remote (local_pose_remote msg))
    (cl:cons ':dof_4 (dof_4 msg))
))
