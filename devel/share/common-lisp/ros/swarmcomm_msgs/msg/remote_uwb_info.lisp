; Auto-generated. Do not edit!


(cl:in-package swarmcomm_msgs-msg)


;//! \htmlinclude remote_uwb_info.msg.html

(cl:defclass <remote_uwb_info> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (sys_time
    :reader sys_time
    :initarg :sys_time
    :type cl:integer
    :initform 0)
   (remote_node_num
    :reader remote_node_num
    :initarg :remote_node_num
    :type cl:integer
    :initform 0)
   (self_id
    :reader self_id
    :initarg :self_id
    :type cl:integer
    :initform 0)
   (node_ids
    :reader node_ids
    :initarg :node_ids
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (node_dis
    :reader node_dis
    :initarg :node_dis
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (fp_rssi
    :reader fp_rssi
    :initarg :fp_rssi
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (rx_rssi
    :reader rx_rssi
    :initarg :rx_rssi
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (recv_distance_time
    :reader recv_distance_time
    :initarg :recv_distance_time
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (active
    :reader active
    :initarg :active
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass remote_uwb_info (<remote_uwb_info>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <remote_uwb_info>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'remote_uwb_info)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swarmcomm_msgs-msg:<remote_uwb_info> is deprecated: use swarmcomm_msgs-msg:remote_uwb_info instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <remote_uwb_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmcomm_msgs-msg:header-val is deprecated.  Use swarmcomm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'sys_time-val :lambda-list '(m))
(cl:defmethod sys_time-val ((m <remote_uwb_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmcomm_msgs-msg:sys_time-val is deprecated.  Use swarmcomm_msgs-msg:sys_time instead.")
  (sys_time m))

(cl:ensure-generic-function 'remote_node_num-val :lambda-list '(m))
(cl:defmethod remote_node_num-val ((m <remote_uwb_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmcomm_msgs-msg:remote_node_num-val is deprecated.  Use swarmcomm_msgs-msg:remote_node_num instead.")
  (remote_node_num m))

(cl:ensure-generic-function 'self_id-val :lambda-list '(m))
(cl:defmethod self_id-val ((m <remote_uwb_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmcomm_msgs-msg:self_id-val is deprecated.  Use swarmcomm_msgs-msg:self_id instead.")
  (self_id m))

(cl:ensure-generic-function 'node_ids-val :lambda-list '(m))
(cl:defmethod node_ids-val ((m <remote_uwb_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmcomm_msgs-msg:node_ids-val is deprecated.  Use swarmcomm_msgs-msg:node_ids instead.")
  (node_ids m))

(cl:ensure-generic-function 'node_dis-val :lambda-list '(m))
(cl:defmethod node_dis-val ((m <remote_uwb_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmcomm_msgs-msg:node_dis-val is deprecated.  Use swarmcomm_msgs-msg:node_dis instead.")
  (node_dis m))

(cl:ensure-generic-function 'fp_rssi-val :lambda-list '(m))
(cl:defmethod fp_rssi-val ((m <remote_uwb_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmcomm_msgs-msg:fp_rssi-val is deprecated.  Use swarmcomm_msgs-msg:fp_rssi instead.")
  (fp_rssi m))

(cl:ensure-generic-function 'rx_rssi-val :lambda-list '(m))
(cl:defmethod rx_rssi-val ((m <remote_uwb_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmcomm_msgs-msg:rx_rssi-val is deprecated.  Use swarmcomm_msgs-msg:rx_rssi instead.")
  (rx_rssi m))

(cl:ensure-generic-function 'recv_distance_time-val :lambda-list '(m))
(cl:defmethod recv_distance_time-val ((m <remote_uwb_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmcomm_msgs-msg:recv_distance_time-val is deprecated.  Use swarmcomm_msgs-msg:recv_distance_time instead.")
  (recv_distance_time m))

(cl:ensure-generic-function 'active-val :lambda-list '(m))
(cl:defmethod active-val ((m <remote_uwb_info>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmcomm_msgs-msg:active-val is deprecated.  Use swarmcomm_msgs-msg:active instead.")
  (active m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <remote_uwb_info>) ostream)
  "Serializes a message object of type '<remote_uwb_info>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sys_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sys_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sys_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sys_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'remote_node_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'remote_node_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'remote_node_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'remote_node_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'self_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'self_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'self_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'self_id)) ostream)
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'node_dis))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'node_dis))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'fp_rssi))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'fp_rssi))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rx_rssi))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'rx_rssi))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'recv_distance_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'recv_distance_time))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'active))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'active))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <remote_uwb_info>) istream)
  "Deserializes a message object of type '<remote_uwb_info>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sys_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sys_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sys_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sys_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'remote_node_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'remote_node_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'remote_node_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'remote_node_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'self_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'self_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'self_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'self_id)) (cl:read-byte istream))
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
  (cl:setf (cl:slot-value msg 'node_dis) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'node_dis)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'fp_rssi) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'fp_rssi)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rx_rssi) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rx_rssi)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'recv_distance_time) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'recv_distance_time)))
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
  (cl:setf (cl:slot-value msg 'active) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'active)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<remote_uwb_info>)))
  "Returns string type for a message object of type '<remote_uwb_info>"
  "swarmcomm_msgs/remote_uwb_info")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'remote_uwb_info)))
  "Returns string type for a message object of type 'remote_uwb_info"
  "swarmcomm_msgs/remote_uwb_info")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<remote_uwb_info>)))
  "Returns md5sum for a message object of type '<remote_uwb_info>"
  "e25f2594fd25635dd69a8518fb143b76")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'remote_uwb_info)))
  "Returns md5sum for a message object of type 'remote_uwb_info"
  "e25f2594fd25635dd69a8518fb143b76")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<remote_uwb_info>)))
  "Returns full string definition for message of type '<remote_uwb_info>"
  (cl:format cl:nil "Header header~%uint32 sys_time~%uint32 remote_node_num~%uint32 self_id~%uint32[] node_ids~%float32[] node_dis~%float32[] fp_rssi~%float32[] rx_rssi~%uint32[] recv_distance_time~%bool[] active~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'remote_uwb_info)))
  "Returns full string definition for message of type 'remote_uwb_info"
  (cl:format cl:nil "Header header~%uint32 sys_time~%uint32 remote_node_num~%uint32 self_id~%uint32[] node_ids~%float32[] node_dis~%float32[] fp_rssi~%float32[] rx_rssi~%uint32[] recv_distance_time~%bool[] active~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <remote_uwb_info>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'node_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'node_dis) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'fp_rssi) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rx_rssi) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'recv_distance_time) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'active) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <remote_uwb_info>))
  "Converts a ROS message object to a list"
  (cl:list 'remote_uwb_info
    (cl:cons ':header (header msg))
    (cl:cons ':sys_time (sys_time msg))
    (cl:cons ':remote_node_num (remote_node_num msg))
    (cl:cons ':self_id (self_id msg))
    (cl:cons ':node_ids (node_ids msg))
    (cl:cons ':node_dis (node_dis msg))
    (cl:cons ':fp_rssi (fp_rssi msg))
    (cl:cons ':rx_rssi (rx_rssi msg))
    (cl:cons ':recv_distance_time (recv_distance_time msg))
    (cl:cons ':active (active msg))
))
