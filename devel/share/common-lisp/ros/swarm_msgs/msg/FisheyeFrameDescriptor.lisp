; Auto-generated. Do not edit!


(cl:in-package swarm_msgs-msg)


;//! \htmlinclude FisheyeFrameDescriptor.msg.html

(cl:defclass <FisheyeFrameDescriptor> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (prevent_adding_db
    :reader prevent_adding_db
    :initarg :prevent_adding_db
    :type cl:boolean
    :initform cl:nil)
   (landmark_num
    :reader landmark_num
    :initarg :landmark_num
    :type cl:integer
    :initform 0)
   (drone_id
    :reader drone_id
    :initarg :drone_id
    :type cl:integer
    :initform 0)
   (msg_id
    :reader msg_id
    :initarg :msg_id
    :type cl:integer
    :initform 0)
   (pose_drone
    :reader pose_drone
    :initarg :pose_drone
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (images
    :reader images
    :initarg :images
    :type (cl:vector swarm_msgs-msg:ImageDescriptor)
   :initform (cl:make-array 0 :element-type 'swarm_msgs-msg:ImageDescriptor :initial-element (cl:make-instance 'swarm_msgs-msg:ImageDescriptor))))
)

(cl:defclass FisheyeFrameDescriptor (<FisheyeFrameDescriptor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FisheyeFrameDescriptor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FisheyeFrameDescriptor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swarm_msgs-msg:<FisheyeFrameDescriptor> is deprecated: use swarm_msgs-msg:FisheyeFrameDescriptor instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FisheyeFrameDescriptor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:header-val is deprecated.  Use swarm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'prevent_adding_db-val :lambda-list '(m))
(cl:defmethod prevent_adding_db-val ((m <FisheyeFrameDescriptor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:prevent_adding_db-val is deprecated.  Use swarm_msgs-msg:prevent_adding_db instead.")
  (prevent_adding_db m))

(cl:ensure-generic-function 'landmark_num-val :lambda-list '(m))
(cl:defmethod landmark_num-val ((m <FisheyeFrameDescriptor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:landmark_num-val is deprecated.  Use swarm_msgs-msg:landmark_num instead.")
  (landmark_num m))

(cl:ensure-generic-function 'drone_id-val :lambda-list '(m))
(cl:defmethod drone_id-val ((m <FisheyeFrameDescriptor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:drone_id-val is deprecated.  Use swarm_msgs-msg:drone_id instead.")
  (drone_id m))

(cl:ensure-generic-function 'msg_id-val :lambda-list '(m))
(cl:defmethod msg_id-val ((m <FisheyeFrameDescriptor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:msg_id-val is deprecated.  Use swarm_msgs-msg:msg_id instead.")
  (msg_id m))

(cl:ensure-generic-function 'pose_drone-val :lambda-list '(m))
(cl:defmethod pose_drone-val ((m <FisheyeFrameDescriptor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:pose_drone-val is deprecated.  Use swarm_msgs-msg:pose_drone instead.")
  (pose_drone m))

(cl:ensure-generic-function 'images-val :lambda-list '(m))
(cl:defmethod images-val ((m <FisheyeFrameDescriptor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:images-val is deprecated.  Use swarm_msgs-msg:images instead.")
  (images m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FisheyeFrameDescriptor>) ostream)
  "Serializes a message object of type '<FisheyeFrameDescriptor>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'prevent_adding_db) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'landmark_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'drone_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'msg_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_drone) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'images))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'images))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FisheyeFrameDescriptor>) istream)
  "Deserializes a message object of type '<FisheyeFrameDescriptor>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'prevent_adding_db) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'landmark_num) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'drone_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'msg_id) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_drone) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'images) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'images)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'swarm_msgs-msg:ImageDescriptor))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FisheyeFrameDescriptor>)))
  "Returns string type for a message object of type '<FisheyeFrameDescriptor>"
  "swarm_msgs/FisheyeFrameDescriptor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FisheyeFrameDescriptor)))
  "Returns string type for a message object of type 'FisheyeFrameDescriptor"
  "swarm_msgs/FisheyeFrameDescriptor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FisheyeFrameDescriptor>)))
  "Returns md5sum for a message object of type '<FisheyeFrameDescriptor>"
  "06020b9f79d2ac92cae2a950ef662e84")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FisheyeFrameDescriptor)))
  "Returns md5sum for a message object of type 'FisheyeFrameDescriptor"
  "06020b9f79d2ac92cae2a950ef662e84")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FisheyeFrameDescriptor>)))
  "Returns full string definition for message of type '<FisheyeFrameDescriptor>"
  (cl:format cl:nil "Header header~%bool prevent_adding_db~%int32 landmark_num~%int32 drone_id~%int64 msg_id~%geometry_msgs/Pose pose_drone~%ImageDescriptor[] images~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: swarm_msgs/ImageDescriptor~%Header header~%int32 drone_id~%~%float32[] feature_descriptor~%~%geometry_msgs/Pose pose_drone~%geometry_msgs/Pose camera_extrinsic~%~%float32[] image_desc~%int32 image_width~%int32 image_height~%uint8[] image~%~%geometry_msgs/Point32[] landmarks_2d_norm~%geometry_msgs/Point32[] landmarks_2d~%geometry_msgs/Point32[] landmarks_3d~%uint8[] landmarks_flag~%bool prevent_adding_db~%~%int32 direction~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FisheyeFrameDescriptor)))
  "Returns full string definition for message of type 'FisheyeFrameDescriptor"
  (cl:format cl:nil "Header header~%bool prevent_adding_db~%int32 landmark_num~%int32 drone_id~%int64 msg_id~%geometry_msgs/Pose pose_drone~%ImageDescriptor[] images~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: swarm_msgs/ImageDescriptor~%Header header~%int32 drone_id~%~%float32[] feature_descriptor~%~%geometry_msgs/Pose pose_drone~%geometry_msgs/Pose camera_extrinsic~%~%float32[] image_desc~%int32 image_width~%int32 image_height~%uint8[] image~%~%geometry_msgs/Point32[] landmarks_2d_norm~%geometry_msgs/Point32[] landmarks_2d~%geometry_msgs/Point32[] landmarks_3d~%uint8[] landmarks_flag~%bool prevent_adding_db~%~%int32 direction~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FisheyeFrameDescriptor>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4
     4
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_drone))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'images) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FisheyeFrameDescriptor>))
  "Converts a ROS message object to a list"
  (cl:list 'FisheyeFrameDescriptor
    (cl:cons ':header (header msg))
    (cl:cons ':prevent_adding_db (prevent_adding_db msg))
    (cl:cons ':landmark_num (landmark_num msg))
    (cl:cons ':drone_id (drone_id msg))
    (cl:cons ':msg_id (msg_id msg))
    (cl:cons ':pose_drone (pose_drone msg))
    (cl:cons ':images (images msg))
))
