; Auto-generated. Do not edit!


(cl:in-package swarm_msgs-msg)


;//! \htmlinclude swarm_remote_command.msg.html

(cl:defclass <swarm_remote_command> (roslisp-msg-protocol:ros-message)
  ((target_id
    :reader target_id
    :initarg :target_id
    :type cl:integer
    :initform 0)
   (cmd
    :reader cmd
    :initarg :cmd
    :type swarmtal_msgs-msg:drone_onboard_command
    :initform (cl:make-instance 'swarmtal_msgs-msg:drone_onboard_command)))
)

(cl:defclass swarm_remote_command (<swarm_remote_command>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <swarm_remote_command>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'swarm_remote_command)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swarm_msgs-msg:<swarm_remote_command> is deprecated: use swarm_msgs-msg:swarm_remote_command instead.")))

(cl:ensure-generic-function 'target_id-val :lambda-list '(m))
(cl:defmethod target_id-val ((m <swarm_remote_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:target_id-val is deprecated.  Use swarm_msgs-msg:target_id instead.")
  (target_id m))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <swarm_remote_command>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:cmd-val is deprecated.  Use swarm_msgs-msg:cmd instead.")
  (cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <swarm_remote_command>) ostream)
  "Serializes a message object of type '<swarm_remote_command>"
  (cl:let* ((signed (cl:slot-value msg 'target_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cmd) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <swarm_remote_command>) istream)
  "Deserializes a message object of type '<swarm_remote_command>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cmd) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<swarm_remote_command>)))
  "Returns string type for a message object of type '<swarm_remote_command>"
  "swarm_msgs/swarm_remote_command")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'swarm_remote_command)))
  "Returns string type for a message object of type 'swarm_remote_command"
  "swarm_msgs/swarm_remote_command")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<swarm_remote_command>)))
  "Returns md5sum for a message object of type '<swarm_remote_command>"
  "168acc9c69f67b2e7b4a0220dae289b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'swarm_remote_command)))
  "Returns md5sum for a message object of type 'swarm_remote_command"
  "168acc9c69f67b2e7b4a0220dae289b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<swarm_remote_command>)))
  "Returns full string definition for message of type '<swarm_remote_command>"
  (cl:format cl:nil "#When target id==-1, that is send to all~%int32 target_id~%swarmtal_msgs/drone_onboard_command cmd~%================================================================================~%MSG: swarmtal_msgs/drone_onboard_command~%uint32 CTRL_POS_COMMAND=0~%uint32 CTRL_VEL_COMMAND=1~%uint32 CTRL_ATT_COMMAND=2~%uint32 CTRL_MISSION_LOAD_COMMAND=3~%uint32 CTRL_MISSION_END_COMMAND=4~%uint32 CTRL_TAKEOF_COMMAND=5~%uint32 CTRL_LANDING_COMMAND=6~%uint32 CTRL_HOVER_COMMAND=7~%uint32 CTRL_ARM_COMMAND=8~%~%uint32 CTRL_PLANING_TGT_COMMAND=10~%~%uint32 CTRL_FORMATION_IDLE=11~%~%#Passive hold in master's local frame~%uint32 CTRL_FORMATION_HOLD_0=12~%~%#Passive hold in master's natural frame~%uint32 CTRL_FORMATION_HOLD_1=13~%~%#Activate fly in master's local frame~%uint32 CTRL_FORMATION_FLY_0=14~%~%#Activate fly master's natural frame~%uint32 CTRL_FORMATION_FLY_1=15~%~%uint32 CTRL_SPEC_TRAJS=16~%uint32 CTRL_MISSION_TRAJS=20~%~%uint32 CTRL_TASK_EXPROLARATION=30~%~%uint32 CTRL_END_MISSION=99~%~%~%uint32 command_type~%#For formation param1 is id~%#Param 2 is submodule~%#3, 4, 5 is x y z~%#Param 6 is yaw~%~%# For POS param1 2 3 is x y z * 10000 ~%# 4 is yaw*10000 if yaw =666666, then use last yawsp~%# 567 is vel feedforward 8 9 10~%~%# For VEL param1 2 3 is x y z * 10000 ~%# 4 is yaw*10000 if yaw =666666, then use last yawsp~%~%# For ATT ~%# param1 2 3 4 is roll pitch yaw vz * 10000 ~%# 5 (>0 use thrust else z is velz)~%# 6 (>0 use yaw else yawrate) ~%# For TAKEoff param 1 is takeoff height * 10000~%# For arm param = 0 is disarm param>0 is arm~%# For mission param1-7 is  mission id~%~%#For Spec traj, ~%# param1 is spec traj type 0 is disable. 1 is 8. ~%# param2 if enable yaw~%# param3 T*10000~%# param4 ox * 10000~%# param5 oy * 10000~%# param6 oz * 10000~%~%int32 param1~%int32 param2~%int32 param3~%int32 param4~%int32 param5~%int32 param6~%int32 param7~%int32 param8~%int32 param9~%int32 param10~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'swarm_remote_command)))
  "Returns full string definition for message of type 'swarm_remote_command"
  (cl:format cl:nil "#When target id==-1, that is send to all~%int32 target_id~%swarmtal_msgs/drone_onboard_command cmd~%================================================================================~%MSG: swarmtal_msgs/drone_onboard_command~%uint32 CTRL_POS_COMMAND=0~%uint32 CTRL_VEL_COMMAND=1~%uint32 CTRL_ATT_COMMAND=2~%uint32 CTRL_MISSION_LOAD_COMMAND=3~%uint32 CTRL_MISSION_END_COMMAND=4~%uint32 CTRL_TAKEOF_COMMAND=5~%uint32 CTRL_LANDING_COMMAND=6~%uint32 CTRL_HOVER_COMMAND=7~%uint32 CTRL_ARM_COMMAND=8~%~%uint32 CTRL_PLANING_TGT_COMMAND=10~%~%uint32 CTRL_FORMATION_IDLE=11~%~%#Passive hold in master's local frame~%uint32 CTRL_FORMATION_HOLD_0=12~%~%#Passive hold in master's natural frame~%uint32 CTRL_FORMATION_HOLD_1=13~%~%#Activate fly in master's local frame~%uint32 CTRL_FORMATION_FLY_0=14~%~%#Activate fly master's natural frame~%uint32 CTRL_FORMATION_FLY_1=15~%~%uint32 CTRL_SPEC_TRAJS=16~%uint32 CTRL_MISSION_TRAJS=20~%~%uint32 CTRL_TASK_EXPROLARATION=30~%~%uint32 CTRL_END_MISSION=99~%~%~%uint32 command_type~%#For formation param1 is id~%#Param 2 is submodule~%#3, 4, 5 is x y z~%#Param 6 is yaw~%~%# For POS param1 2 3 is x y z * 10000 ~%# 4 is yaw*10000 if yaw =666666, then use last yawsp~%# 567 is vel feedforward 8 9 10~%~%# For VEL param1 2 3 is x y z * 10000 ~%# 4 is yaw*10000 if yaw =666666, then use last yawsp~%~%# For ATT ~%# param1 2 3 4 is roll pitch yaw vz * 10000 ~%# 5 (>0 use thrust else z is velz)~%# 6 (>0 use yaw else yawrate) ~%# For TAKEoff param 1 is takeoff height * 10000~%# For arm param = 0 is disarm param>0 is arm~%# For mission param1-7 is  mission id~%~%#For Spec traj, ~%# param1 is spec traj type 0 is disable. 1 is 8. ~%# param2 if enable yaw~%# param3 T*10000~%# param4 ox * 10000~%# param5 oy * 10000~%# param6 oz * 10000~%~%int32 param1~%int32 param2~%int32 param3~%int32 param4~%int32 param5~%int32 param6~%int32 param7~%int32 param8~%int32 param9~%int32 param10~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <swarm_remote_command>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cmd))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <swarm_remote_command>))
  "Converts a ROS message object to a list"
  (cl:list 'swarm_remote_command
    (cl:cons ':target_id (target_id msg))
    (cl:cons ':cmd (cmd msg))
))
