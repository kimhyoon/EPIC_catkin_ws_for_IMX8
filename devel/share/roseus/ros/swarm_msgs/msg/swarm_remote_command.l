;; Auto-generated. Do not edit!


(when (boundp 'swarm_msgs::swarm_remote_command)
  (if (not (find-package "SWARM_MSGS"))
    (make-package "SWARM_MSGS"))
  (shadow 'swarm_remote_command (find-package "SWARM_MSGS")))
(unless (find-package "SWARM_MSGS::SWARM_REMOTE_COMMAND")
  (make-package "SWARM_MSGS::SWARM_REMOTE_COMMAND"))

(in-package "ROS")
;;//! \htmlinclude swarm_remote_command.msg.html
(if (not (find-package "SWARMTAL_MSGS"))
  (ros::roseus-add-msgs "swarmtal_msgs"))


(defclass swarm_msgs::swarm_remote_command
  :super ros::object
  :slots (_target_id _cmd ))

(defmethod swarm_msgs::swarm_remote_command
  (:init
   (&key
    ((:target_id __target_id) 0)
    ((:cmd __cmd) (instance swarmtal_msgs::drone_onboard_command :init))
    )
   (send-super :init)
   (setq _target_id (round __target_id))
   (setq _cmd __cmd)
   self)
  (:target_id
   (&optional __target_id)
   (if __target_id (setq _target_id __target_id)) _target_id)
  (:cmd
   (&rest __cmd)
   (if (keywordp (car __cmd))
       (send* _cmd __cmd)
     (progn
       (if __cmd (setq _cmd (car __cmd)))
       _cmd)))
  (:serialization-length
   ()
   (+
    ;; int32 _target_id
    4
    ;; swarmtal_msgs/drone_onboard_command _cmd
    (send _cmd :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _target_id
       (write-long _target_id s)
     ;; swarmtal_msgs/drone_onboard_command _cmd
       (send _cmd :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _target_id
     (setq _target_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; swarmtal_msgs/drone_onboard_command _cmd
     (send _cmd :deserialize buf ptr-) (incf ptr- (send _cmd :serialization-length))
   ;;
   self)
  )

(setf (get swarm_msgs::swarm_remote_command :md5sum-) "168acc9c69f67b2e7b4a0220dae289b1")
(setf (get swarm_msgs::swarm_remote_command :datatype-) "swarm_msgs/swarm_remote_command")
(setf (get swarm_msgs::swarm_remote_command :definition-)
      "#When target id==-1, that is send to all
int32 target_id
swarmtal_msgs/drone_onboard_command cmd
================================================================================
MSG: swarmtal_msgs/drone_onboard_command
uint32 CTRL_POS_COMMAND=0
uint32 CTRL_VEL_COMMAND=1
uint32 CTRL_ATT_COMMAND=2
uint32 CTRL_MISSION_LOAD_COMMAND=3
uint32 CTRL_MISSION_END_COMMAND=4
uint32 CTRL_TAKEOF_COMMAND=5
uint32 CTRL_LANDING_COMMAND=6
uint32 CTRL_HOVER_COMMAND=7
uint32 CTRL_ARM_COMMAND=8

uint32 CTRL_PLANING_TGT_COMMAND=10

uint32 CTRL_FORMATION_IDLE=11

#Passive hold in master's local frame
uint32 CTRL_FORMATION_HOLD_0=12

#Passive hold in master's natural frame
uint32 CTRL_FORMATION_HOLD_1=13

#Activate fly in master's local frame
uint32 CTRL_FORMATION_FLY_0=14

#Activate fly master's natural frame
uint32 CTRL_FORMATION_FLY_1=15

uint32 CTRL_SPEC_TRAJS=16
uint32 CTRL_MISSION_TRAJS=20

uint32 CTRL_TASK_EXPROLARATION=30

uint32 CTRL_END_MISSION=99


uint32 command_type
#For formation param1 is id
#Param 2 is submodule
#3, 4, 5 is x y z
#Param 6 is yaw

# For POS param1 2 3 is x y z * 10000 
# 4 is yaw*10000 if yaw =666666, then use last yawsp
# 567 is vel feedforward 8 9 10

# For VEL param1 2 3 is x y z * 10000 
# 4 is yaw*10000 if yaw =666666, then use last yawsp

# For ATT 
# param1 2 3 4 is roll pitch yaw vz * 10000 
# 5 (>0 use thrust else z is velz)
# 6 (>0 use yaw else yawrate) 
# For TAKEoff param 1 is takeoff height * 10000
# For arm param = 0 is disarm param>0 is arm
# For mission param1-7 is  mission id

#For Spec traj, 
# param1 is spec traj type 0 is disable. 1 is 8. 
# param2 if enable yaw
# param3 T*10000
# param4 ox * 10000
# param5 oy * 10000
# param6 oz * 10000

int32 param1
int32 param2
int32 param3
int32 param4
int32 param5
int32 param6
int32 param7
int32 param8
int32 param9
int32 param10
")



(provide :swarm_msgs/swarm_remote_command "168acc9c69f67b2e7b4a0220dae289b1")


