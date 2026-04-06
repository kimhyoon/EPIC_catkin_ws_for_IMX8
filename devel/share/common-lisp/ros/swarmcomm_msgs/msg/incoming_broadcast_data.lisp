; Auto-generated. Do not edit!


(cl:in-package swarmcomm_msgs-msg)


;//! \htmlinclude incoming_broadcast_data.msg.html

(cl:defclass <incoming_broadcast_data> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (remote_id
    :reader remote_id
    :initarg :remote_id
    :type cl:integer
    :initform 0)
   (remote_recv_time
    :reader remote_recv_time
    :initarg :remote_recv_time
    :type cl:integer
    :initform 0)
   (lps_time
    :reader lps_time
    :initarg :lps_time
    :type cl:integer
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (source
    :reader source
    :initarg :source
    :type cl:fixnum
    :initform 0))
)

(cl:defclass incoming_broadcast_data (<incoming_broadcast_data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <incoming_broadcast_data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'incoming_broadcast_data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swarmcomm_msgs-msg:<incoming_broadcast_data> is deprecated: use swarmcomm_msgs-msg:incoming_broadcast_data instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <incoming_broadcast_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmcomm_msgs-msg:header-val is deprecated.  Use swarmcomm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'remote_id-val :lambda-list '(m))
(cl:defmethod remote_id-val ((m <incoming_broadcast_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmcomm_msgs-msg:remote_id-val is deprecated.  Use swarmcomm_msgs-msg:remote_id instead.")
  (remote_id m))

(cl:ensure-generic-function 'remote_recv_time-val :lambda-list '(m))
(cl:defmethod remote_recv_time-val ((m <incoming_broadcast_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmcomm_msgs-msg:remote_recv_time-val is deprecated.  Use swarmcomm_msgs-msg:remote_recv_time instead.")
  (remote_recv_time m))

(cl:ensure-generic-function 'lps_time-val :lambda-list '(m))
(cl:defmethod lps_time-val ((m <incoming_broadcast_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmcomm_msgs-msg:lps_time-val is deprecated.  Use swarmcomm_msgs-msg:lps_time instead.")
  (lps_time m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <incoming_broadcast_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmcomm_msgs-msg:data-val is deprecated.  Use swarmcomm_msgs-msg:data instead.")
  (data m))

(cl:ensure-generic-function 'source-val :lambda-list '(m))
(cl:defmethod source-val ((m <incoming_broadcast_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmcomm_msgs-msg:source-val is deprecated.  Use swarmcomm_msgs-msg:source instead.")
  (source m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <incoming_broadcast_data>) ostream)
  "Serializes a message object of type '<incoming_broadcast_data>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'remote_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'remote_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'remote_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'remote_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'remote_recv_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'remote_recv_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'remote_recv_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'remote_recv_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lps_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lps_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lps_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lps_time)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
  (cl:let* ((signed (cl:slot-value msg 'source)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <incoming_broadcast_data>) istream)
  "Deserializes a message object of type '<incoming_broadcast_data>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'remote_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'remote_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'remote_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'remote_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'remote_recv_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'remote_recv_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'remote_recv_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'remote_recv_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lps_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'lps_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'lps_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'lps_time)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'source) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<incoming_broadcast_data>)))
  "Returns string type for a message object of type '<incoming_broadcast_data>"
  "swarmcomm_msgs/incoming_broadcast_data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'incoming_broadcast_data)))
  "Returns string type for a message object of type 'incoming_broadcast_data"
  "swarmcomm_msgs/incoming_broadcast_data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<incoming_broadcast_data>)))
  "Returns md5sum for a message object of type '<incoming_broadcast_data>"
  "7fbd088099406fde7cc514736d266b32")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'incoming_broadcast_data)))
  "Returns md5sum for a message object of type 'incoming_broadcast_data"
  "7fbd088099406fde7cc514736d266b32")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<incoming_broadcast_data>)))
  "Returns full string definition for message of type '<incoming_broadcast_data>"
  (cl:format cl:nil "Header header~%uint32 remote_id~%uint32 remote_recv_time~%uint32 lps_time~%uint8[] data~%~%int8 source #0 UWB 1 WIFI~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'incoming_broadcast_data)))
  "Returns full string definition for message of type 'incoming_broadcast_data"
  (cl:format cl:nil "Header header~%uint32 remote_id~%uint32 remote_recv_time~%uint32 lps_time~%uint8[] data~%~%int8 source #0 UWB 1 WIFI~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <incoming_broadcast_data>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <incoming_broadcast_data>))
  "Converts a ROS message object to a list"
  (cl:list 'incoming_broadcast_data
    (cl:cons ':header (header msg))
    (cl:cons ':remote_id (remote_id msg))
    (cl:cons ':remote_recv_time (remote_recv_time msg))
    (cl:cons ':lps_time (lps_time msg))
    (cl:cons ':data (data msg))
    (cl:cons ':source (source msg))
))
