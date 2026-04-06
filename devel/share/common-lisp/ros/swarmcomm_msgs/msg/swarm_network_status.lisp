; Auto-generated. Do not edit!


(cl:in-package swarmcomm_msgs-msg)


;//! \htmlinclude swarm_network_status.msg.html

(cl:defclass <swarm_network_status> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (node_ids
    :reader node_ids
    :initarg :node_ids
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (network_status
    :reader network_status
    :initarg :network_status
    :type (cl:vector swarmcomm_msgs-msg:drone_network_status)
   :initform (cl:make-array 0 :element-type 'swarmcomm_msgs-msg:drone_network_status :initial-element (cl:make-instance 'swarmcomm_msgs-msg:drone_network_status))))
)

(cl:defclass swarm_network_status (<swarm_network_status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <swarm_network_status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'swarm_network_status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swarmcomm_msgs-msg:<swarm_network_status> is deprecated: use swarmcomm_msgs-msg:swarm_network_status instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <swarm_network_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmcomm_msgs-msg:header-val is deprecated.  Use swarmcomm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'node_ids-val :lambda-list '(m))
(cl:defmethod node_ids-val ((m <swarm_network_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmcomm_msgs-msg:node_ids-val is deprecated.  Use swarmcomm_msgs-msg:node_ids instead.")
  (node_ids m))

(cl:ensure-generic-function 'network_status-val :lambda-list '(m))
(cl:defmethod network_status-val ((m <swarm_network_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmcomm_msgs-msg:network_status-val is deprecated.  Use swarmcomm_msgs-msg:network_status instead.")
  (network_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <swarm_network_status>) ostream)
  "Serializes a message object of type '<swarm_network_status>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'node_ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'node_ids))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'network_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'network_status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <swarm_network_status>) istream)
  "Deserializes a message object of type '<swarm_network_status>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'node_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'node_ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'network_status) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'network_status)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'swarmcomm_msgs-msg:drone_network_status))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<swarm_network_status>)))
  "Returns string type for a message object of type '<swarm_network_status>"
  "swarmcomm_msgs/swarm_network_status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'swarm_network_status)))
  "Returns string type for a message object of type 'swarm_network_status"
  "swarmcomm_msgs/swarm_network_status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<swarm_network_status>)))
  "Returns md5sum for a message object of type '<swarm_network_status>"
  "1c1c1859eb0bfda60ba46555f90ca67f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'swarm_network_status)))
  "Returns md5sum for a message object of type 'swarm_network_status"
  "1c1c1859eb0bfda60ba46555f90ca67f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<swarm_network_status>)))
  "Returns full string definition for message of type '<swarm_network_status>"
  (cl:format cl:nil "Header header~%uint32[] node_ids~%drone_network_status[] network_status~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: swarmcomm_msgs/drone_network_status~%Header header~%uint32 drone_id~%bool active~%int32 quality~%int32 bandwidth~%int32 hops~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'swarm_network_status)))
  "Returns full string definition for message of type 'swarm_network_status"
  (cl:format cl:nil "Header header~%uint32[] node_ids~%drone_network_status[] network_status~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: swarmcomm_msgs/drone_network_status~%Header header~%uint32 drone_id~%bool active~%int32 quality~%int32 bandwidth~%int32 hops~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <swarm_network_status>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'node_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'network_status) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <swarm_network_status>))
  "Converts a ROS message object to a list"
  (cl:list 'swarm_network_status
    (cl:cons ':header (header msg))
    (cl:cons ':node_ids (node_ids msg))
    (cl:cons ':network_status (network_status msg))
))
