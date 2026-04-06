; Auto-generated. Do not edit!


(cl:in-package swarmcomm_msgs-msg)


;//! \htmlinclude data_buffer.msg.html

(cl:defclass <data_buffer> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (send_method
    :reader send_method
    :initarg :send_method
    :type cl:fixnum
    :initform 0))
)

(cl:defclass data_buffer (<data_buffer>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <data_buffer>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'data_buffer)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swarmcomm_msgs-msg:<data_buffer> is deprecated: use swarmcomm_msgs-msg:data_buffer instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <data_buffer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmcomm_msgs-msg:header-val is deprecated.  Use swarmcomm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <data_buffer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmcomm_msgs-msg:data-val is deprecated.  Use swarmcomm_msgs-msg:data instead.")
  (data m))

(cl:ensure-generic-function 'send_method-val :lambda-list '(m))
(cl:defmethod send_method-val ((m <data_buffer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmcomm_msgs-msg:send_method-val is deprecated.  Use swarmcomm_msgs-msg:send_method instead.")
  (send_method m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <data_buffer>) ostream)
  "Serializes a message object of type '<data_buffer>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'send_method)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <data_buffer>) istream)
  "Deserializes a message object of type '<data_buffer>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'send_method)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<data_buffer>)))
  "Returns string type for a message object of type '<data_buffer>"
  "swarmcomm_msgs/data_buffer")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'data_buffer)))
  "Returns string type for a message object of type 'data_buffer"
  "swarmcomm_msgs/data_buffer")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<data_buffer>)))
  "Returns md5sum for a message object of type '<data_buffer>"
  "b57009adb212892c421cbf75aa66757f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'data_buffer)))
  "Returns md5sum for a message object of type 'data_buffer"
  "b57009adb212892c421cbf75aa66757f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<data_buffer>)))
  "Returns full string definition for message of type '<data_buffer>"
  (cl:format cl:nil "Header header~%uint8[] data~%~%#0 UWB 1 WiFI 2 All~%uint8 send_method~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'data_buffer)))
  "Returns full string definition for message of type 'data_buffer"
  (cl:format cl:nil "Header header~%uint8[] data~%~%#0 UWB 1 WiFI 2 All~%uint8 send_method~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <data_buffer>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <data_buffer>))
  "Converts a ROS message object to a list"
  (cl:list 'data_buffer
    (cl:cons ':header (header msg))
    (cl:cons ':data (data msg))
    (cl:cons ':send_method (send_method msg))
))
