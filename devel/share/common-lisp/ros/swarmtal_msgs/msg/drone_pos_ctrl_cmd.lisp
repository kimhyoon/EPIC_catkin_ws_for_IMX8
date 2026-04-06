; Auto-generated. Do not edit!


(cl:in-package swarmtal_msgs-msg)


;//! \htmlinclude drone_pos_ctrl_cmd.msg.html

(cl:defclass <drone_pos_ctrl_cmd> (roslisp-msg-protocol:ros-message)
  ((ctrl_mode
    :reader ctrl_mode
    :initarg :ctrl_mode
    :type cl:integer
    :initform 0)
   (pos_sp
    :reader pos_sp
    :initarg :pos_sp
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (vel_sp
    :reader vel_sp
    :initarg :vel_sp
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (acc_sp
    :reader acc_sp
    :initarg :acc_sp
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (att_sp
    :reader att_sp
    :initarg :att_sp
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion))
   (yaw_sp
    :reader yaw_sp
    :initarg :yaw_sp
    :type cl:float
    :initform 0.0)
   (z_sp
    :reader z_sp
    :initarg :z_sp
    :type cl:float
    :initform 0.0)
   (use_fc_yaw
    :reader use_fc_yaw
    :initarg :use_fc_yaw
    :type cl:boolean
    :initform cl:nil)
   (max_vel
    :reader max_vel
    :initarg :max_vel
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass drone_pos_ctrl_cmd (<drone_pos_ctrl_cmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <drone_pos_ctrl_cmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'drone_pos_ctrl_cmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swarmtal_msgs-msg:<drone_pos_ctrl_cmd> is deprecated: use swarmtal_msgs-msg:drone_pos_ctrl_cmd instead.")))

(cl:ensure-generic-function 'ctrl_mode-val :lambda-list '(m))
(cl:defmethod ctrl_mode-val ((m <drone_pos_ctrl_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:ctrl_mode-val is deprecated.  Use swarmtal_msgs-msg:ctrl_mode instead.")
  (ctrl_mode m))

(cl:ensure-generic-function 'pos_sp-val :lambda-list '(m))
(cl:defmethod pos_sp-val ((m <drone_pos_ctrl_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:pos_sp-val is deprecated.  Use swarmtal_msgs-msg:pos_sp instead.")
  (pos_sp m))

(cl:ensure-generic-function 'vel_sp-val :lambda-list '(m))
(cl:defmethod vel_sp-val ((m <drone_pos_ctrl_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:vel_sp-val is deprecated.  Use swarmtal_msgs-msg:vel_sp instead.")
  (vel_sp m))

(cl:ensure-generic-function 'acc_sp-val :lambda-list '(m))
(cl:defmethod acc_sp-val ((m <drone_pos_ctrl_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:acc_sp-val is deprecated.  Use swarmtal_msgs-msg:acc_sp instead.")
  (acc_sp m))

(cl:ensure-generic-function 'att_sp-val :lambda-list '(m))
(cl:defmethod att_sp-val ((m <drone_pos_ctrl_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:att_sp-val is deprecated.  Use swarmtal_msgs-msg:att_sp instead.")
  (att_sp m))

(cl:ensure-generic-function 'yaw_sp-val :lambda-list '(m))
(cl:defmethod yaw_sp-val ((m <drone_pos_ctrl_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:yaw_sp-val is deprecated.  Use swarmtal_msgs-msg:yaw_sp instead.")
  (yaw_sp m))

(cl:ensure-generic-function 'z_sp-val :lambda-list '(m))
(cl:defmethod z_sp-val ((m <drone_pos_ctrl_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:z_sp-val is deprecated.  Use swarmtal_msgs-msg:z_sp instead.")
  (z_sp m))

(cl:ensure-generic-function 'use_fc_yaw-val :lambda-list '(m))
(cl:defmethod use_fc_yaw-val ((m <drone_pos_ctrl_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:use_fc_yaw-val is deprecated.  Use swarmtal_msgs-msg:use_fc_yaw instead.")
  (use_fc_yaw m))

(cl:ensure-generic-function 'max_vel-val :lambda-list '(m))
(cl:defmethod max_vel-val ((m <drone_pos_ctrl_cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:max_vel-val is deprecated.  Use swarmtal_msgs-msg:max_vel instead.")
  (max_vel m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<drone_pos_ctrl_cmd>)))
    "Constants for message type '<drone_pos_ctrl_cmd>"
  '((:CTRL_CMD_IDLE_MODE . 0)
    (:CTRL_CMD_VEL_MODE . 1)
    (:CTRL_CMD_POS_MODE . 2)
    (:CTRL_CMD_ATT_THRUST_MODE . 3)
    (:CTRL_CMD_ATT_VELZ_MODE . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'drone_pos_ctrl_cmd)))
    "Constants for message type 'drone_pos_ctrl_cmd"
  '((:CTRL_CMD_IDLE_MODE . 0)
    (:CTRL_CMD_VEL_MODE . 1)
    (:CTRL_CMD_POS_MODE . 2)
    (:CTRL_CMD_ATT_THRUST_MODE . 3)
    (:CTRL_CMD_ATT_VELZ_MODE . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <drone_pos_ctrl_cmd>) ostream)
  "Serializes a message object of type '<drone_pos_ctrl_cmd>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ctrl_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ctrl_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ctrl_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ctrl_mode)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pos_sp) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vel_sp) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acc_sp) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'att_sp) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw_sp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'z_sp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_fc_yaw) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'max_vel) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <drone_pos_ctrl_cmd>) istream)
  "Deserializes a message object of type '<drone_pos_ctrl_cmd>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ctrl_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ctrl_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ctrl_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ctrl_mode)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pos_sp) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vel_sp) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acc_sp) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'att_sp) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw_sp) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z_sp) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'use_fc_yaw) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'max_vel) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<drone_pos_ctrl_cmd>)))
  "Returns string type for a message object of type '<drone_pos_ctrl_cmd>"
  "swarmtal_msgs/drone_pos_ctrl_cmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'drone_pos_ctrl_cmd)))
  "Returns string type for a message object of type 'drone_pos_ctrl_cmd"
  "swarmtal_msgs/drone_pos_ctrl_cmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<drone_pos_ctrl_cmd>)))
  "Returns md5sum for a message object of type '<drone_pos_ctrl_cmd>"
  "af8791618f25096214834155fb70f593")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'drone_pos_ctrl_cmd)))
  "Returns md5sum for a message object of type 'drone_pos_ctrl_cmd"
  "af8791618f25096214834155fb70f593")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<drone_pos_ctrl_cmd>)))
  "Returns full string definition for message of type '<drone_pos_ctrl_cmd>"
  (cl:format cl:nil "uint32 CTRL_CMD_IDLE_MODE = 0~%uint32 CTRL_CMD_VEL_MODE  = 1~%uint32 CTRL_CMD_POS_MODE  = 2~%uint32 CTRL_CMD_ATT_THRUST_MODE  = 3~%uint32 CTRL_CMD_ATT_VELZ_MODE  = 4~%~%uint32 ctrl_mode~%~%geometry_msgs/Vector3 pos_sp~%geometry_msgs/Vector3 vel_sp~%geometry_msgs/Vector3 acc_sp~%geometry_msgs/Quaternion att_sp~%float64 yaw_sp~%float64 z_sp~%~%bool use_fc_yaw~%~%geometry_msgs/Vector3 max_vel~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'drone_pos_ctrl_cmd)))
  "Returns full string definition for message of type 'drone_pos_ctrl_cmd"
  (cl:format cl:nil "uint32 CTRL_CMD_IDLE_MODE = 0~%uint32 CTRL_CMD_VEL_MODE  = 1~%uint32 CTRL_CMD_POS_MODE  = 2~%uint32 CTRL_CMD_ATT_THRUST_MODE  = 3~%uint32 CTRL_CMD_ATT_VELZ_MODE  = 4~%~%uint32 ctrl_mode~%~%geometry_msgs/Vector3 pos_sp~%geometry_msgs/Vector3 vel_sp~%geometry_msgs/Vector3 acc_sp~%geometry_msgs/Quaternion att_sp~%float64 yaw_sp~%float64 z_sp~%~%bool use_fc_yaw~%~%geometry_msgs/Vector3 max_vel~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <drone_pos_ctrl_cmd>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pos_sp))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vel_sp))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acc_sp))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'att_sp))
     8
     8
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'max_vel))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <drone_pos_ctrl_cmd>))
  "Converts a ROS message object to a list"
  (cl:list 'drone_pos_ctrl_cmd
    (cl:cons ':ctrl_mode (ctrl_mode msg))
    (cl:cons ':pos_sp (pos_sp msg))
    (cl:cons ':vel_sp (vel_sp msg))
    (cl:cons ':acc_sp (acc_sp msg))
    (cl:cons ':att_sp (att_sp msg))
    (cl:cons ':yaw_sp (yaw_sp msg))
    (cl:cons ':z_sp (z_sp msg))
    (cl:cons ':use_fc_yaw (use_fc_yaw msg))
    (cl:cons ':max_vel (max_vel msg))
))
