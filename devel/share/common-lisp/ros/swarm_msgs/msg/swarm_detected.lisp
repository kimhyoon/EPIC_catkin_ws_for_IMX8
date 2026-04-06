; Auto-generated. Do not edit!


(cl:in-package swarm_msgs-msg)


;//! \htmlinclude swarm_detected.msg.html

(cl:defclass <swarm_detected> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (self_drone_id
    :reader self_drone_id
    :initarg :self_drone_id
    :type cl:integer
    :initform 0)
   (detected_nodes
    :reader detected_nodes
    :initarg :detected_nodes
    :type (cl:vector swarm_msgs-msg:node_detected)
   :initform (cl:make-array 0 :element-type 'swarm_msgs-msg:node_detected :initial-element (cl:make-instance 'swarm_msgs-msg:node_detected)))
   (detected_nodes_xyz_yaw
    :reader detected_nodes_xyz_yaw
    :initarg :detected_nodes_xyz_yaw
    :type (cl:vector swarm_msgs-msg:node_detected_xyzyaw)
   :initform (cl:make-array 0 :element-type 'swarm_msgs-msg:node_detected_xyzyaw :initial-element (cl:make-instance 'swarm_msgs-msg:node_detected_xyzyaw)))
   (is_6d_detect
    :reader is_6d_detect
    :initarg :is_6d_detect
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass swarm_detected (<swarm_detected>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <swarm_detected>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'swarm_detected)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swarm_msgs-msg:<swarm_detected> is deprecated: use swarm_msgs-msg:swarm_detected instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <swarm_detected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:header-val is deprecated.  Use swarm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'self_drone_id-val :lambda-list '(m))
(cl:defmethod self_drone_id-val ((m <swarm_detected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:self_drone_id-val is deprecated.  Use swarm_msgs-msg:self_drone_id instead.")
  (self_drone_id m))

(cl:ensure-generic-function 'detected_nodes-val :lambda-list '(m))
(cl:defmethod detected_nodes-val ((m <swarm_detected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:detected_nodes-val is deprecated.  Use swarm_msgs-msg:detected_nodes instead.")
  (detected_nodes m))

(cl:ensure-generic-function 'detected_nodes_xyz_yaw-val :lambda-list '(m))
(cl:defmethod detected_nodes_xyz_yaw-val ((m <swarm_detected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:detected_nodes_xyz_yaw-val is deprecated.  Use swarm_msgs-msg:detected_nodes_xyz_yaw instead.")
  (detected_nodes_xyz_yaw m))

(cl:ensure-generic-function 'is_6d_detect-val :lambda-list '(m))
(cl:defmethod is_6d_detect-val ((m <swarm_detected>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:is_6d_detect-val is deprecated.  Use swarm_msgs-msg:is_6d_detect instead.")
  (is_6d_detect m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <swarm_detected>) ostream)
  "Serializes a message object of type '<swarm_detected>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'self_drone_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'detected_nodes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'detected_nodes))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'detected_nodes_xyz_yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'detected_nodes_xyz_yaw))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_6d_detect) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <swarm_detected>) istream)
  "Deserializes a message object of type '<swarm_detected>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'self_drone_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'detected_nodes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'detected_nodes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'swarm_msgs-msg:node_detected))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'detected_nodes_xyz_yaw) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'detected_nodes_xyz_yaw)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'swarm_msgs-msg:node_detected_xyzyaw))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'is_6d_detect) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<swarm_detected>)))
  "Returns string type for a message object of type '<swarm_detected>"
  "swarm_msgs/swarm_detected")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'swarm_detected)))
  "Returns string type for a message object of type 'swarm_detected"
  "swarm_msgs/swarm_detected")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<swarm_detected>)))
  "Returns md5sum for a message object of type '<swarm_detected>"
  "37a9e13432a599762a05d5f1e0fb11f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'swarm_detected)))
  "Returns md5sum for a message object of type 'swarm_detected"
  "37a9e13432a599762a05d5f1e0fb11f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<swarm_detected>)))
  "Returns full string definition for message of type '<swarm_detected>"
  (cl:format cl:nil "Header header~%int32 self_drone_id~%node_detected[] detected_nodes~%node_detected_xyzyaw[] detected_nodes_xyz_yaw~%~%bool is_6d_detect #if only xyzyaw; false then only xyzyaw~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: swarm_msgs/node_detected~%Header header~%int64 id~%int32 self_drone_id~%int32 remote_drone_id~%geometry_msgs/PoseWithCovariance relative_pose #If 2d detect, gives x=1~%bool is_2d_detect~%bool is_yaw_valid~%float64 probaility~%geometry_msgs/Pose local_pose_self~%geometry_msgs/Pose local_pose_remote~%bool dof_4~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: swarm_msgs/node_detected_xyzyaw~%Header header~%int64 id~%int32 self_drone_id~%int32 remote_drone_id~%geometry_msgs/Point dpos~%geometry_msgs/Point dpos_std~%~%float64 dyaw~%float64 dyaw_cov~%bool enable_scale~%bool is_yaw_valid~%float64 probaility~%float64 inv_dep~%~%geometry_msgs/Pose local_pose_self #Here is camera pose, not IMU pose.~%geometry_msgs/Pose local_pose_remote~%~%geometry_msgs/Pose camera_extrinsic~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'swarm_detected)))
  "Returns full string definition for message of type 'swarm_detected"
  (cl:format cl:nil "Header header~%int32 self_drone_id~%node_detected[] detected_nodes~%node_detected_xyzyaw[] detected_nodes_xyz_yaw~%~%bool is_6d_detect #if only xyzyaw; false then only xyzyaw~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: swarm_msgs/node_detected~%Header header~%int64 id~%int32 self_drone_id~%int32 remote_drone_id~%geometry_msgs/PoseWithCovariance relative_pose #If 2d detect, gives x=1~%bool is_2d_detect~%bool is_yaw_valid~%float64 probaility~%geometry_msgs/Pose local_pose_self~%geometry_msgs/Pose local_pose_remote~%bool dof_4~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: swarm_msgs/node_detected_xyzyaw~%Header header~%int64 id~%int32 self_drone_id~%int32 remote_drone_id~%geometry_msgs/Point dpos~%geometry_msgs/Point dpos_std~%~%float64 dyaw~%float64 dyaw_cov~%bool enable_scale~%bool is_yaw_valid~%float64 probaility~%float64 inv_dep~%~%geometry_msgs/Pose local_pose_self #Here is camera pose, not IMU pose.~%geometry_msgs/Pose local_pose_remote~%~%geometry_msgs/Pose camera_extrinsic~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <swarm_detected>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'detected_nodes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'detected_nodes_xyz_yaw) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <swarm_detected>))
  "Converts a ROS message object to a list"
  (cl:list 'swarm_detected
    (cl:cons ':header (header msg))
    (cl:cons ':self_drone_id (self_drone_id msg))
    (cl:cons ':detected_nodes (detected_nodes msg))
    (cl:cons ':detected_nodes_xyz_yaw (detected_nodes_xyz_yaw msg))
    (cl:cons ':is_6d_detect (is_6d_detect msg))
))
