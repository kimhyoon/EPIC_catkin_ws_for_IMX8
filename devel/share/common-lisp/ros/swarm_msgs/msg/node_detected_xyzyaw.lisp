; Auto-generated. Do not edit!


(cl:in-package swarm_msgs-msg)


;//! \htmlinclude node_detected_xyzyaw.msg.html

(cl:defclass <node_detected_xyzyaw> (roslisp-msg-protocol:ros-message)
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
   (dpos
    :reader dpos
    :initarg :dpos
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (dpos_std
    :reader dpos_std
    :initarg :dpos_std
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (dyaw
    :reader dyaw
    :initarg :dyaw
    :type cl:float
    :initform 0.0)
   (dyaw_cov
    :reader dyaw_cov
    :initarg :dyaw_cov
    :type cl:float
    :initform 0.0)
   (enable_scale
    :reader enable_scale
    :initarg :enable_scale
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
   (inv_dep
    :reader inv_dep
    :initarg :inv_dep
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
   (camera_extrinsic
    :reader camera_extrinsic
    :initarg :camera_extrinsic
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass node_detected_xyzyaw (<node_detected_xyzyaw>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <node_detected_xyzyaw>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'node_detected_xyzyaw)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swarm_msgs-msg:<node_detected_xyzyaw> is deprecated: use swarm_msgs-msg:node_detected_xyzyaw instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <node_detected_xyzyaw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:header-val is deprecated.  Use swarm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <node_detected_xyzyaw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:id-val is deprecated.  Use swarm_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'self_drone_id-val :lambda-list '(m))
(cl:defmethod self_drone_id-val ((m <node_detected_xyzyaw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:self_drone_id-val is deprecated.  Use swarm_msgs-msg:self_drone_id instead.")
  (self_drone_id m))

(cl:ensure-generic-function 'remote_drone_id-val :lambda-list '(m))
(cl:defmethod remote_drone_id-val ((m <node_detected_xyzyaw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:remote_drone_id-val is deprecated.  Use swarm_msgs-msg:remote_drone_id instead.")
  (remote_drone_id m))

(cl:ensure-generic-function 'dpos-val :lambda-list '(m))
(cl:defmethod dpos-val ((m <node_detected_xyzyaw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:dpos-val is deprecated.  Use swarm_msgs-msg:dpos instead.")
  (dpos m))

(cl:ensure-generic-function 'dpos_std-val :lambda-list '(m))
(cl:defmethod dpos_std-val ((m <node_detected_xyzyaw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:dpos_std-val is deprecated.  Use swarm_msgs-msg:dpos_std instead.")
  (dpos_std m))

(cl:ensure-generic-function 'dyaw-val :lambda-list '(m))
(cl:defmethod dyaw-val ((m <node_detected_xyzyaw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:dyaw-val is deprecated.  Use swarm_msgs-msg:dyaw instead.")
  (dyaw m))

(cl:ensure-generic-function 'dyaw_cov-val :lambda-list '(m))
(cl:defmethod dyaw_cov-val ((m <node_detected_xyzyaw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:dyaw_cov-val is deprecated.  Use swarm_msgs-msg:dyaw_cov instead.")
  (dyaw_cov m))

(cl:ensure-generic-function 'enable_scale-val :lambda-list '(m))
(cl:defmethod enable_scale-val ((m <node_detected_xyzyaw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:enable_scale-val is deprecated.  Use swarm_msgs-msg:enable_scale instead.")
  (enable_scale m))

(cl:ensure-generic-function 'is_yaw_valid-val :lambda-list '(m))
(cl:defmethod is_yaw_valid-val ((m <node_detected_xyzyaw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:is_yaw_valid-val is deprecated.  Use swarm_msgs-msg:is_yaw_valid instead.")
  (is_yaw_valid m))

(cl:ensure-generic-function 'probaility-val :lambda-list '(m))
(cl:defmethod probaility-val ((m <node_detected_xyzyaw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:probaility-val is deprecated.  Use swarm_msgs-msg:probaility instead.")
  (probaility m))

(cl:ensure-generic-function 'inv_dep-val :lambda-list '(m))
(cl:defmethod inv_dep-val ((m <node_detected_xyzyaw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:inv_dep-val is deprecated.  Use swarm_msgs-msg:inv_dep instead.")
  (inv_dep m))

(cl:ensure-generic-function 'local_pose_self-val :lambda-list '(m))
(cl:defmethod local_pose_self-val ((m <node_detected_xyzyaw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:local_pose_self-val is deprecated.  Use swarm_msgs-msg:local_pose_self instead.")
  (local_pose_self m))

(cl:ensure-generic-function 'local_pose_remote-val :lambda-list '(m))
(cl:defmethod local_pose_remote-val ((m <node_detected_xyzyaw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:local_pose_remote-val is deprecated.  Use swarm_msgs-msg:local_pose_remote instead.")
  (local_pose_remote m))

(cl:ensure-generic-function 'camera_extrinsic-val :lambda-list '(m))
(cl:defmethod camera_extrinsic-val ((m <node_detected_xyzyaw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:camera_extrinsic-val is deprecated.  Use swarm_msgs-msg:camera_extrinsic instead.")
  (camera_extrinsic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <node_detected_xyzyaw>) ostream)
  "Serializes a message object of type '<node_detected_xyzyaw>"
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dpos) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'dpos_std) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dyaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dyaw_cov))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_scale) 1 0)) ostream)
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
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'inv_dep))))
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_extrinsic) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <node_detected_xyzyaw>) istream)
  "Deserializes a message object of type '<node_detected_xyzyaw>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dpos) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'dpos_std) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dyaw) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dyaw_cov) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'enable_scale) (cl:not (cl:zerop (cl:read-byte istream))))
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'inv_dep) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'local_pose_self) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'local_pose_remote) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_extrinsic) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<node_detected_xyzyaw>)))
  "Returns string type for a message object of type '<node_detected_xyzyaw>"
  "swarm_msgs/node_detected_xyzyaw")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'node_detected_xyzyaw)))
  "Returns string type for a message object of type 'node_detected_xyzyaw"
  "swarm_msgs/node_detected_xyzyaw")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<node_detected_xyzyaw>)))
  "Returns md5sum for a message object of type '<node_detected_xyzyaw>"
  "153d8a388ec70ddfe9950d5a9c645eda")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'node_detected_xyzyaw)))
  "Returns md5sum for a message object of type 'node_detected_xyzyaw"
  "153d8a388ec70ddfe9950d5a9c645eda")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<node_detected_xyzyaw>)))
  "Returns full string definition for message of type '<node_detected_xyzyaw>"
  (cl:format cl:nil "Header header~%int64 id~%int32 self_drone_id~%int32 remote_drone_id~%geometry_msgs/Point dpos~%geometry_msgs/Point dpos_std~%~%float64 dyaw~%float64 dyaw_cov~%bool enable_scale~%bool is_yaw_valid~%float64 probaility~%float64 inv_dep~%~%geometry_msgs/Pose local_pose_self #Here is camera pose, not IMU pose.~%geometry_msgs/Pose local_pose_remote~%~%geometry_msgs/Pose camera_extrinsic~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'node_detected_xyzyaw)))
  "Returns full string definition for message of type 'node_detected_xyzyaw"
  (cl:format cl:nil "Header header~%int64 id~%int32 self_drone_id~%int32 remote_drone_id~%geometry_msgs/Point dpos~%geometry_msgs/Point dpos_std~%~%float64 dyaw~%float64 dyaw_cov~%bool enable_scale~%bool is_yaw_valid~%float64 probaility~%float64 inv_dep~%~%geometry_msgs/Pose local_pose_self #Here is camera pose, not IMU pose.~%geometry_msgs/Pose local_pose_remote~%~%geometry_msgs/Pose camera_extrinsic~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <node_detected_xyzyaw>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dpos))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'dpos_std))
     8
     8
     1
     1
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'local_pose_self))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'local_pose_remote))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_extrinsic))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <node_detected_xyzyaw>))
  "Converts a ROS message object to a list"
  (cl:list 'node_detected_xyzyaw
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
    (cl:cons ':self_drone_id (self_drone_id msg))
    (cl:cons ':remote_drone_id (remote_drone_id msg))
    (cl:cons ':dpos (dpos msg))
    (cl:cons ':dpos_std (dpos_std msg))
    (cl:cons ':dyaw (dyaw msg))
    (cl:cons ':dyaw_cov (dyaw_cov msg))
    (cl:cons ':enable_scale (enable_scale msg))
    (cl:cons ':is_yaw_valid (is_yaw_valid msg))
    (cl:cons ':probaility (probaility msg))
    (cl:cons ':inv_dep (inv_dep msg))
    (cl:cons ':local_pose_self (local_pose_self msg))
    (cl:cons ':local_pose_remote (local_pose_remote msg))
    (cl:cons ':camera_extrinsic (camera_extrinsic msg))
))
