; Auto-generated. Do not edit!


(cl:in-package swarmcomm_msgs-msg)


;//! \htmlinclude drone_network_status.msg.html

(cl:defclass <drone_network_status> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (drone_id
    :reader drone_id
    :initarg :drone_id
    :type cl:integer
    :initform 0)
   (active
    :reader active
    :initarg :active
    :type cl:boolean
    :initform cl:nil)
   (quality
    :reader quality
    :initarg :quality
    :type cl:integer
    :initform 0)
   (bandwidth
    :reader bandwidth
    :initarg :bandwidth
    :type cl:integer
    :initform 0)
   (hops
    :reader hops
    :initarg :hops
    :type cl:integer
    :initform 0))
)

(cl:defclass drone_network_status (<drone_network_status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <drone_network_status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'drone_network_status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swarmcomm_msgs-msg:<drone_network_status> is deprecated: use swarmcomm_msgs-msg:drone_network_status instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <drone_network_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmcomm_msgs-msg:header-val is deprecated.  Use swarmcomm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'drone_id-val :lambda-list '(m))
(cl:defmethod drone_id-val ((m <drone_network_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmcomm_msgs-msg:drone_id-val is deprecated.  Use swarmcomm_msgs-msg:drone_id instead.")
  (drone_id m))

(cl:ensure-generic-function 'active-val :lambda-list '(m))
(cl:defmethod active-val ((m <drone_network_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmcomm_msgs-msg:active-val is deprecated.  Use swarmcomm_msgs-msg:active instead.")
  (active m))

(cl:ensure-generic-function 'quality-val :lambda-list '(m))
(cl:defmethod quality-val ((m <drone_network_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmcomm_msgs-msg:quality-val is deprecated.  Use swarmcomm_msgs-msg:quality instead.")
  (quality m))

(cl:ensure-generic-function 'bandwidth-val :lambda-list '(m))
(cl:defmethod bandwidth-val ((m <drone_network_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmcomm_msgs-msg:bandwidth-val is deprecated.  Use swarmcomm_msgs-msg:bandwidth instead.")
  (bandwidth m))

(cl:ensure-generic-function 'hops-val :lambda-list '(m))
(cl:defmethod hops-val ((m <drone_network_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmcomm_msgs-msg:hops-val is deprecated.  Use swarmcomm_msgs-msg:hops instead.")
  (hops m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <drone_network_status>) ostream)
  "Serializes a message object of type '<drone_network_status>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'drone_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'drone_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'drone_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'drone_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'active) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'quality)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'bandwidth)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'hops)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <drone_network_status>) istream)
  "Deserializes a message object of type '<drone_network_status>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'drone_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'drone_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'drone_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'drone_id)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'active) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'quality) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bandwidth) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hops) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<drone_network_status>)))
  "Returns string type for a message object of type '<drone_network_status>"
  "swarmcomm_msgs/drone_network_status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'drone_network_status)))
  "Returns string type for a message object of type 'drone_network_status"
  "swarmcomm_msgs/drone_network_status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<drone_network_status>)))
  "Returns md5sum for a message object of type '<drone_network_status>"
  "63a82d3d4b8f3839b01ee568fe5fa8ce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'drone_network_status)))
  "Returns md5sum for a message object of type 'drone_network_status"
  "63a82d3d4b8f3839b01ee568fe5fa8ce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<drone_network_status>)))
  "Returns full string definition for message of type '<drone_network_status>"
  (cl:format cl:nil "Header header~%uint32 drone_id~%bool active~%int32 quality~%int32 bandwidth~%int32 hops~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'drone_network_status)))
  "Returns full string definition for message of type 'drone_network_status"
  (cl:format cl:nil "Header header~%uint32 drone_id~%bool active~%int32 quality~%int32 bandwidth~%int32 hops~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <drone_network_status>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     1
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <drone_network_status>))
  "Converts a ROS message object to a list"
  (cl:list 'drone_network_status
    (cl:cons ':header (header msg))
    (cl:cons ':drone_id (drone_id msg))
    (cl:cons ':active (active msg))
    (cl:cons ':quality (quality msg))
    (cl:cons ':bandwidth (bandwidth msg))
    (cl:cons ':hops (hops msg))
))
