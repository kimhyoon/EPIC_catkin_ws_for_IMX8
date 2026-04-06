; Auto-generated. Do not edit!


(cl:in-package swarmtal_msgs-msg)


;//! \htmlinclude drone_onboard_command.msg.html

(cl:defclass <drone_onboard_command> (roslisp-msg-protocol:ros-message)
  ((command_type
    :reader command_type
    :initarg :command_type
    :type cl:integer
    :initform 0)
   (param1
    :reader param1
    :initarg :param1
    :type cl:integer
    :initform 0)
   (param2
    :reader param2
    :initarg :param2
    :type cl:integer
    :initform 0)
   (param3
    :reader param3
    :initarg :param3
    :type cl:integer
    :initform 0)
   (param4
    :reader param4
    :initarg :param4
    :type cl:integer
    :initform 0)
   (param5
    :reader param5
    :initarg :param5
    :type cl:integer
    :initform 0)
   (param6
    :reader param6
    :initarg :param6
    :type cl:integer
    :initform 0)
   (param7
    :reader param7
    :initarg :param7
    :type cl:integer
    :initform 0)
   (param8
    :reader param8
    :initarg :param8
    :type cl:integer
    :initform 0)
   (param9
    :reader param9
    :initarg :param9
    :type cl:integer
    :initform 0)
   (param10
    :reader param10
    :initarg :param10
    :type cl:integer
    :initform 0))
)

(cl:defclass drone_onboard_command (<drone_onboard_command>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <drone_onboard_command>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'drone_onboard_command)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swarmtal_msgs-msg:<drone_onboard_command> is deprecated: use swarmtal_msgs-msg:drone_onboard_command instead.")))

(cl:ensure-generic-function 'command_type-val :lambda-list '(m))
(cl:defmethod command_type-val ((m <drone_onboard_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:command_type-val is deprecated.  Use swarmtal_msgs-msg:command_type instead.")
  (command_type m))

(cl:ensure-generic-function 'param1-val :lambda-list '(m))
(cl:defmethod param1-val ((m <drone_onboard_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:param1-val is deprecated.  Use swarmtal_msgs-msg:param1 instead.")
  (param1 m))

(cl:ensure-generic-function 'param2-val :lambda-list '(m))
(cl:defmethod param2-val ((m <drone_onboard_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:param2-val is deprecated.  Use swarmtal_msgs-msg:param2 instead.")
  (param2 m))

(cl:ensure-generic-function 'param3-val :lambda-list '(m))
(cl:defmethod param3-val ((m <drone_onboard_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:param3-val is deprecated.  Use swarmtal_msgs-msg:param3 instead.")
  (param3 m))

(cl:ensure-generic-function 'param4-val :lambda-list '(m))
(cl:defmethod param4-val ((m <drone_onboard_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:param4-val is deprecated.  Use swarmtal_msgs-msg:param4 instead.")
  (param4 m))

(cl:ensure-generic-function 'param5-val :lambda-list '(m))
(cl:defmethod param5-val ((m <drone_onboard_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:param5-val is deprecated.  Use swarmtal_msgs-msg:param5 instead.")
  (param5 m))

(cl:ensure-generic-function 'param6-val :lambda-list '(m))
(cl:defmethod param6-val ((m <drone_onboard_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:param6-val is deprecated.  Use swarmtal_msgs-msg:param6 instead.")
  (param6 m))

(cl:ensure-generic-function 'param7-val :lambda-list '(m))
(cl:defmethod param7-val ((m <drone_onboard_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:param7-val is deprecated.  Use swarmtal_msgs-msg:param7 instead.")
  (param7 m))

(cl:ensure-generic-function 'param8-val :lambda-list '(m))
(cl:defmethod param8-val ((m <drone_onboard_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:param8-val is deprecated.  Use swarmtal_msgs-msg:param8 instead.")
  (param8 m))

(cl:ensure-generic-function 'param9-val :lambda-list '(m))
(cl:defmethod param9-val ((m <drone_onboard_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:param9-val is deprecated.  Use swarmtal_msgs-msg:param9 instead.")
  (param9 m))

(cl:ensure-generic-function 'param10-val :lambda-list '(m))
(cl:defmethod param10-val ((m <drone_onboard_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:param10-val is deprecated.  Use swarmtal_msgs-msg:param10 instead.")
  (param10 m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<drone_onboard_command>)))
    "Constants for message type '<drone_onboard_command>"
  '((:CTRL_POS_COMMAND . 0)
    (:CTRL_VEL_COMMAND . 1)
    (:CTRL_ATT_COMMAND . 2)
    (:CTRL_MISSION_LOAD_COMMAND . 3)
    (:CTRL_MISSION_END_COMMAND . 4)
    (:CTRL_TAKEOF_COMMAND . 5)
    (:CTRL_LANDING_COMMAND . 6)
    (:CTRL_HOVER_COMMAND . 7)
    (:CTRL_ARM_COMMAND . 8)
    (:CTRL_PLANING_TGT_COMMAND . 10)
    (:CTRL_FORMATION_IDLE . 11)
    (:CTRL_FORMATION_HOLD_0 . 12)
    (:CTRL_FORMATION_HOLD_1 . 13)
    (:CTRL_FORMATION_FLY_0 . 14)
    (:CTRL_FORMATION_FLY_1 . 15)
    (:CTRL_SPEC_TRAJS . 16)
    (:CTRL_MISSION_TRAJS . 20)
    (:CTRL_TASK_EXPROLARATION . 30)
    (:CTRL_END_MISSION . 99))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'drone_onboard_command)))
    "Constants for message type 'drone_onboard_command"
  '((:CTRL_POS_COMMAND . 0)
    (:CTRL_VEL_COMMAND . 1)
    (:CTRL_ATT_COMMAND . 2)
    (:CTRL_MISSION_LOAD_COMMAND . 3)
    (:CTRL_MISSION_END_COMMAND . 4)
    (:CTRL_TAKEOF_COMMAND . 5)
    (:CTRL_LANDING_COMMAND . 6)
    (:CTRL_HOVER_COMMAND . 7)
    (:CTRL_ARM_COMMAND . 8)
    (:CTRL_PLANING_TGT_COMMAND . 10)
    (:CTRL_FORMATION_IDLE . 11)
    (:CTRL_FORMATION_HOLD_0 . 12)
    (:CTRL_FORMATION_HOLD_1 . 13)
    (:CTRL_FORMATION_FLY_0 . 14)
    (:CTRL_FORMATION_FLY_1 . 15)
    (:CTRL_SPEC_TRAJS . 16)
    (:CTRL_MISSION_TRAJS . 20)
    (:CTRL_TASK_EXPROLARATION . 30)
    (:CTRL_END_MISSION . 99))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <drone_onboard_command>) ostream)
  "Serializes a message object of type '<drone_onboard_command>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'command_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'command_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'command_type)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'param1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'param2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'param3)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'param4)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'param5)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'param6)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'param7)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'param8)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'param9)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'param10)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <drone_onboard_command>) istream)
  "Deserializes a message object of type '<drone_onboard_command>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'command_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'command_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'command_type)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'param1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'param2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'param3) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'param4) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'param5) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'param6) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'param7) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'param8) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'param9) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'param10) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<drone_onboard_command>)))
  "Returns string type for a message object of type '<drone_onboard_command>"
  "swarmtal_msgs/drone_onboard_command")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'drone_onboard_command)))
  "Returns string type for a message object of type 'drone_onboard_command"
  "swarmtal_msgs/drone_onboard_command")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<drone_onboard_command>)))
  "Returns md5sum for a message object of type '<drone_onboard_command>"
  "a5ca6aa226dc341da2ea852d685b0336")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'drone_onboard_command)))
  "Returns md5sum for a message object of type 'drone_onboard_command"
  "a5ca6aa226dc341da2ea852d685b0336")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<drone_onboard_command>)))
  "Returns full string definition for message of type '<drone_onboard_command>"
  (cl:format cl:nil "uint32 CTRL_POS_COMMAND=0~%uint32 CTRL_VEL_COMMAND=1~%uint32 CTRL_ATT_COMMAND=2~%uint32 CTRL_MISSION_LOAD_COMMAND=3~%uint32 CTRL_MISSION_END_COMMAND=4~%uint32 CTRL_TAKEOF_COMMAND=5~%uint32 CTRL_LANDING_COMMAND=6~%uint32 CTRL_HOVER_COMMAND=7~%uint32 CTRL_ARM_COMMAND=8~%~%uint32 CTRL_PLANING_TGT_COMMAND=10~%~%uint32 CTRL_FORMATION_IDLE=11~%~%#Passive hold in master's local frame~%uint32 CTRL_FORMATION_HOLD_0=12~%~%#Passive hold in master's natural frame~%uint32 CTRL_FORMATION_HOLD_1=13~%~%#Activate fly in master's local frame~%uint32 CTRL_FORMATION_FLY_0=14~%~%#Activate fly master's natural frame~%uint32 CTRL_FORMATION_FLY_1=15~%~%uint32 CTRL_SPEC_TRAJS=16~%uint32 CTRL_MISSION_TRAJS=20~%~%uint32 CTRL_TASK_EXPROLARATION=30~%~%uint32 CTRL_END_MISSION=99~%~%~%uint32 command_type~%#For formation param1 is id~%#Param 2 is submodule~%#3, 4, 5 is x y z~%#Param 6 is yaw~%~%# For POS param1 2 3 is x y z * 10000 ~%# 4 is yaw*10000 if yaw =666666, then use last yawsp~%# 567 is vel feedforward 8 9 10~%~%# For VEL param1 2 3 is x y z * 10000 ~%# 4 is yaw*10000 if yaw =666666, then use last yawsp~%~%# For ATT ~%# param1 2 3 4 is roll pitch yaw vz * 10000 ~%# 5 (>0 use thrust else z is velz)~%# 6 (>0 use yaw else yawrate) ~%# For TAKEoff param 1 is takeoff height * 10000~%# For arm param = 0 is disarm param>0 is arm~%# For mission param1-7 is  mission id~%~%#For Spec traj, ~%# param1 is spec traj type 0 is disable. 1 is 8. ~%# param2 if enable yaw~%# param3 T*10000~%# param4 ox * 10000~%# param5 oy * 10000~%# param6 oz * 10000~%~%int32 param1~%int32 param2~%int32 param3~%int32 param4~%int32 param5~%int32 param6~%int32 param7~%int32 param8~%int32 param9~%int32 param10~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'drone_onboard_command)))
  "Returns full string definition for message of type 'drone_onboard_command"
  (cl:format cl:nil "uint32 CTRL_POS_COMMAND=0~%uint32 CTRL_VEL_COMMAND=1~%uint32 CTRL_ATT_COMMAND=2~%uint32 CTRL_MISSION_LOAD_COMMAND=3~%uint32 CTRL_MISSION_END_COMMAND=4~%uint32 CTRL_TAKEOF_COMMAND=5~%uint32 CTRL_LANDING_COMMAND=6~%uint32 CTRL_HOVER_COMMAND=7~%uint32 CTRL_ARM_COMMAND=8~%~%uint32 CTRL_PLANING_TGT_COMMAND=10~%~%uint32 CTRL_FORMATION_IDLE=11~%~%#Passive hold in master's local frame~%uint32 CTRL_FORMATION_HOLD_0=12~%~%#Passive hold in master's natural frame~%uint32 CTRL_FORMATION_HOLD_1=13~%~%#Activate fly in master's local frame~%uint32 CTRL_FORMATION_FLY_0=14~%~%#Activate fly master's natural frame~%uint32 CTRL_FORMATION_FLY_1=15~%~%uint32 CTRL_SPEC_TRAJS=16~%uint32 CTRL_MISSION_TRAJS=20~%~%uint32 CTRL_TASK_EXPROLARATION=30~%~%uint32 CTRL_END_MISSION=99~%~%~%uint32 command_type~%#For formation param1 is id~%#Param 2 is submodule~%#3, 4, 5 is x y z~%#Param 6 is yaw~%~%# For POS param1 2 3 is x y z * 10000 ~%# 4 is yaw*10000 if yaw =666666, then use last yawsp~%# 567 is vel feedforward 8 9 10~%~%# For VEL param1 2 3 is x y z * 10000 ~%# 4 is yaw*10000 if yaw =666666, then use last yawsp~%~%# For ATT ~%# param1 2 3 4 is roll pitch yaw vz * 10000 ~%# 5 (>0 use thrust else z is velz)~%# 6 (>0 use yaw else yawrate) ~%# For TAKEoff param 1 is takeoff height * 10000~%# For arm param = 0 is disarm param>0 is arm~%# For mission param1-7 is  mission id~%~%#For Spec traj, ~%# param1 is spec traj type 0 is disable. 1 is 8. ~%# param2 if enable yaw~%# param3 T*10000~%# param4 ox * 10000~%# param5 oy * 10000~%# param6 oz * 10000~%~%int32 param1~%int32 param2~%int32 param3~%int32 param4~%int32 param5~%int32 param6~%int32 param7~%int32 param8~%int32 param9~%int32 param10~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <drone_onboard_command>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <drone_onboard_command>))
  "Converts a ROS message object to a list"
  (cl:list 'drone_onboard_command
    (cl:cons ':command_type (command_type msg))
    (cl:cons ':param1 (param1 msg))
    (cl:cons ':param2 (param2 msg))
    (cl:cons ':param3 (param3 msg))
    (cl:cons ':param4 (param4 msg))
    (cl:cons ':param5 (param5 msg))
    (cl:cons ':param6 (param6 msg))
    (cl:cons ':param7 (param7 msg))
    (cl:cons ':param8 (param8 msg))
    (cl:cons ':param9 (param9 msg))
    (cl:cons ':param10 (param10 msg))
))
