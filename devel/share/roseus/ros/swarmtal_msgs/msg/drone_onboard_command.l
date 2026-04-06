;; Auto-generated. Do not edit!


(when (boundp 'swarmtal_msgs::drone_onboard_command)
  (if (not (find-package "SWARMTAL_MSGS"))
    (make-package "SWARMTAL_MSGS"))
  (shadow 'drone_onboard_command (find-package "SWARMTAL_MSGS")))
(unless (find-package "SWARMTAL_MSGS::DRONE_ONBOARD_COMMAND")
  (make-package "SWARMTAL_MSGS::DRONE_ONBOARD_COMMAND"))

(in-package "ROS")
;;//! \htmlinclude drone_onboard_command.msg.html


(intern "*CTRL_POS_COMMAND*" (find-package "SWARMTAL_MSGS::DRONE_ONBOARD_COMMAND"))
(shadow '*CTRL_POS_COMMAND* (find-package "SWARMTAL_MSGS::DRONE_ONBOARD_COMMAND"))
(defconstant swarmtal_msgs::drone_onboard_command::*CTRL_POS_COMMAND* 0)
(intern "*CTRL_VEL_COMMAND*" (find-package "SWARMTAL_MSGS::DRONE_ONBOARD_COMMAND"))
(shadow '*CTRL_VEL_COMMAND* (find-package "SWARMTAL_MSGS::DRONE_ONBOARD_COMMAND"))
(defconstant swarmtal_msgs::drone_onboard_command::*CTRL_VEL_COMMAND* 1)
(intern "*CTRL_ATT_COMMAND*" (find-package "SWARMTAL_MSGS::DRONE_ONBOARD_COMMAND"))
(shadow '*CTRL_ATT_COMMAND* (find-package "SWARMTAL_MSGS::DRONE_ONBOARD_COMMAND"))
(defconstant swarmtal_msgs::drone_onboard_command::*CTRL_ATT_COMMAND* 2)
(intern "*CTRL_MISSION_LOAD_COMMAND*" (find-package "SWARMTAL_MSGS::DRONE_ONBOARD_COMMAND"))
(shadow '*CTRL_MISSION_LOAD_COMMAND* (find-package "SWARMTAL_MSGS::DRONE_ONBOARD_COMMAND"))
(defconstant swarmtal_msgs::drone_onboard_command::*CTRL_MISSION_LOAD_COMMAND* 3)
(intern "*CTRL_MISSION_END_COMMAND*" (find-package "SWARMTAL_MSGS::DRONE_ONBOARD_COMMAND"))
(shadow '*CTRL_MISSION_END_COMMAND* (find-package "SWARMTAL_MSGS::DRONE_ONBOARD_COMMAND"))
(defconstant swarmtal_msgs::drone_onboard_command::*CTRL_MISSION_END_COMMAND* 4)
(intern "*CTRL_TAKEOF_COMMAND*" (find-package "SWARMTAL_MSGS::DRONE_ONBOARD_COMMAND"))
(shadow '*CTRL_TAKEOF_COMMAND* (find-package "SWARMTAL_MSGS::DRONE_ONBOARD_COMMAND"))
(defconstant swarmtal_msgs::drone_onboard_command::*CTRL_TAKEOF_COMMAND* 5)
(intern "*CTRL_LANDING_COMMAND*" (find-package "SWARMTAL_MSGS::DRONE_ONBOARD_COMMAND"))
(shadow '*CTRL_LANDING_COMMAND* (find-package "SWARMTAL_MSGS::DRONE_ONBOARD_COMMAND"))
(defconstant swarmtal_msgs::drone_onboard_command::*CTRL_LANDING_COMMAND* 6)
(intern "*CTRL_HOVER_COMMAND*" (find-package "SWARMTAL_MSGS::DRONE_ONBOARD_COMMAND"))
(shadow '*CTRL_HOVER_COMMAND* (find-package "SWARMTAL_MSGS::DRONE_ONBOARD_COMMAND"))
(defconstant swarmtal_msgs::drone_onboard_command::*CTRL_HOVER_COMMAND* 7)
(intern "*CTRL_ARM_COMMAND*" (find-package "SWARMTAL_MSGS::DRONE_ONBOARD_COMMAND"))
(shadow '*CTRL_ARM_COMMAND* (find-package "SWARMTAL_MSGS::DRONE_ONBOARD_COMMAND"))
(defconstant swarmtal_msgs::drone_onboard_command::*CTRL_ARM_COMMAND* 8)
(intern "*CTRL_PLANING_TGT_COMMAND*" (find-package "SWARMTAL_MSGS::DRONE_ONBOARD_COMMAND"))
(shadow '*CTRL_PLANING_TGT_COMMAND* (find-package "SWARMTAL_MSGS::DRONE_ONBOARD_COMMAND"))
(defconstant swarmtal_msgs::drone_onboard_command::*CTRL_PLANING_TGT_COMMAND* 10)
(intern "*CTRL_FORMATION_IDLE*" (find-package "SWARMTAL_MSGS::DRONE_ONBOARD_COMMAND"))
(shadow '*CTRL_FORMATION_IDLE* (find-package "SWARMTAL_MSGS::DRONE_ONBOARD_COMMAND"))
(defconstant swarmtal_msgs::drone_onboard_command::*CTRL_FORMATION_IDLE* 11)
(intern "*CTRL_FORMATION_HOLD_0*" (find-package "SWARMTAL_MSGS::DRONE_ONBOARD_COMMAND"))
(shadow '*CTRL_FORMATION_HOLD_0* (find-package "SWARMTAL_MSGS::DRONE_ONBOARD_COMMAND"))
(defconstant swarmtal_msgs::drone_onboard_command::*CTRL_FORMATION_HOLD_0* 12)
(intern "*CTRL_FORMATION_HOLD_1*" (find-package "SWARMTAL_MSGS::DRONE_ONBOARD_COMMAND"))
(shadow '*CTRL_FORMATION_HOLD_1* (find-package "SWARMTAL_MSGS::DRONE_ONBOARD_COMMAND"))
(defconstant swarmtal_msgs::drone_onboard_command::*CTRL_FORMATION_HOLD_1* 13)
(intern "*CTRL_FORMATION_FLY_0*" (find-package "SWARMTAL_MSGS::DRONE_ONBOARD_COMMAND"))
(shadow '*CTRL_FORMATION_FLY_0* (find-package "SWARMTAL_MSGS::DRONE_ONBOARD_COMMAND"))
(defconstant swarmtal_msgs::drone_onboard_command::*CTRL_FORMATION_FLY_0* 14)
(intern "*CTRL_FORMATION_FLY_1*" (find-package "SWARMTAL_MSGS::DRONE_ONBOARD_COMMAND"))
(shadow '*CTRL_FORMATION_FLY_1* (find-package "SWARMTAL_MSGS::DRONE_ONBOARD_COMMAND"))
(defconstant swarmtal_msgs::drone_onboard_command::*CTRL_FORMATION_FLY_1* 15)
(intern "*CTRL_SPEC_TRAJS*" (find-package "SWARMTAL_MSGS::DRONE_ONBOARD_COMMAND"))
(shadow '*CTRL_SPEC_TRAJS* (find-package "SWARMTAL_MSGS::DRONE_ONBOARD_COMMAND"))
(defconstant swarmtal_msgs::drone_onboard_command::*CTRL_SPEC_TRAJS* 16)
(intern "*CTRL_MISSION_TRAJS*" (find-package "SWARMTAL_MSGS::DRONE_ONBOARD_COMMAND"))
(shadow '*CTRL_MISSION_TRAJS* (find-package "SWARMTAL_MSGS::DRONE_ONBOARD_COMMAND"))
(defconstant swarmtal_msgs::drone_onboard_command::*CTRL_MISSION_TRAJS* 20)
(intern "*CTRL_TASK_EXPROLARATION*" (find-package "SWARMTAL_MSGS::DRONE_ONBOARD_COMMAND"))
(shadow '*CTRL_TASK_EXPROLARATION* (find-package "SWARMTAL_MSGS::DRONE_ONBOARD_COMMAND"))
(defconstant swarmtal_msgs::drone_onboard_command::*CTRL_TASK_EXPROLARATION* 30)
(intern "*CTRL_END_MISSION*" (find-package "SWARMTAL_MSGS::DRONE_ONBOARD_COMMAND"))
(shadow '*CTRL_END_MISSION* (find-package "SWARMTAL_MSGS::DRONE_ONBOARD_COMMAND"))
(defconstant swarmtal_msgs::drone_onboard_command::*CTRL_END_MISSION* 99)

(defun swarmtal_msgs::drone_onboard_command-to-symbol (const)
  (cond
        ((= const 0) 'swarmtal_msgs::drone_onboard_command::*CTRL_POS_COMMAND*)
        ((= const 1) 'swarmtal_msgs::drone_onboard_command::*CTRL_VEL_COMMAND*)
        ((= const 2) 'swarmtal_msgs::drone_onboard_command::*CTRL_ATT_COMMAND*)
        ((= const 3) 'swarmtal_msgs::drone_onboard_command::*CTRL_MISSION_LOAD_COMMAND*)
        ((= const 4) 'swarmtal_msgs::drone_onboard_command::*CTRL_MISSION_END_COMMAND*)
        ((= const 5) 'swarmtal_msgs::drone_onboard_command::*CTRL_TAKEOF_COMMAND*)
        ((= const 6) 'swarmtal_msgs::drone_onboard_command::*CTRL_LANDING_COMMAND*)
        ((= const 7) 'swarmtal_msgs::drone_onboard_command::*CTRL_HOVER_COMMAND*)
        ((= const 8) 'swarmtal_msgs::drone_onboard_command::*CTRL_ARM_COMMAND*)
        ((= const 10) 'swarmtal_msgs::drone_onboard_command::*CTRL_PLANING_TGT_COMMAND*)
        ((= const 11) 'swarmtal_msgs::drone_onboard_command::*CTRL_FORMATION_IDLE*)
        ((= const 12) 'swarmtal_msgs::drone_onboard_command::*CTRL_FORMATION_HOLD_0*)
        ((= const 13) 'swarmtal_msgs::drone_onboard_command::*CTRL_FORMATION_HOLD_1*)
        ((= const 14) 'swarmtal_msgs::drone_onboard_command::*CTRL_FORMATION_FLY_0*)
        ((= const 15) 'swarmtal_msgs::drone_onboard_command::*CTRL_FORMATION_FLY_1*)
        ((= const 16) 'swarmtal_msgs::drone_onboard_command::*CTRL_SPEC_TRAJS*)
        ((= const 20) 'swarmtal_msgs::drone_onboard_command::*CTRL_MISSION_TRAJS*)
        ((= const 30) 'swarmtal_msgs::drone_onboard_command::*CTRL_TASK_EXPROLARATION*)
        ((= const 99) 'swarmtal_msgs::drone_onboard_command::*CTRL_END_MISSION*)
        (t nil)))

(defclass swarmtal_msgs::drone_onboard_command
  :super ros::object
  :slots (_command_type _param1 _param2 _param3 _param4 _param5 _param6 _param7 _param8 _param9 _param10 ))

(defmethod swarmtal_msgs::drone_onboard_command
  (:init
   (&key
    ((:command_type __command_type) 0)
    ((:param1 __param1) 0)
    ((:param2 __param2) 0)
    ((:param3 __param3) 0)
    ((:param4 __param4) 0)
    ((:param5 __param5) 0)
    ((:param6 __param6) 0)
    ((:param7 __param7) 0)
    ((:param8 __param8) 0)
    ((:param9 __param9) 0)
    ((:param10 __param10) 0)
    )
   (send-super :init)
   (setq _command_type (round __command_type))
   (setq _param1 (round __param1))
   (setq _param2 (round __param2))
   (setq _param3 (round __param3))
   (setq _param4 (round __param4))
   (setq _param5 (round __param5))
   (setq _param6 (round __param6))
   (setq _param7 (round __param7))
   (setq _param8 (round __param8))
   (setq _param9 (round __param9))
   (setq _param10 (round __param10))
   self)
  (:command_type
   (&optional __command_type)
   (if __command_type (setq _command_type __command_type)) _command_type)
  (:param1
   (&optional __param1)
   (if __param1 (setq _param1 __param1)) _param1)
  (:param2
   (&optional __param2)
   (if __param2 (setq _param2 __param2)) _param2)
  (:param3
   (&optional __param3)
   (if __param3 (setq _param3 __param3)) _param3)
  (:param4
   (&optional __param4)
   (if __param4 (setq _param4 __param4)) _param4)
  (:param5
   (&optional __param5)
   (if __param5 (setq _param5 __param5)) _param5)
  (:param6
   (&optional __param6)
   (if __param6 (setq _param6 __param6)) _param6)
  (:param7
   (&optional __param7)
   (if __param7 (setq _param7 __param7)) _param7)
  (:param8
   (&optional __param8)
   (if __param8 (setq _param8 __param8)) _param8)
  (:param9
   (&optional __param9)
   (if __param9 (setq _param9 __param9)) _param9)
  (:param10
   (&optional __param10)
   (if __param10 (setq _param10 __param10)) _param10)
  (:serialization-length
   ()
   (+
    ;; uint32 _command_type
    4
    ;; int32 _param1
    4
    ;; int32 _param2
    4
    ;; int32 _param3
    4
    ;; int32 _param4
    4
    ;; int32 _param5
    4
    ;; int32 _param6
    4
    ;; int32 _param7
    4
    ;; int32 _param8
    4
    ;; int32 _param9
    4
    ;; int32 _param10
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _command_type
       (write-long _command_type s)
     ;; int32 _param1
       (write-long _param1 s)
     ;; int32 _param2
       (write-long _param2 s)
     ;; int32 _param3
       (write-long _param3 s)
     ;; int32 _param4
       (write-long _param4 s)
     ;; int32 _param5
       (write-long _param5 s)
     ;; int32 _param6
       (write-long _param6 s)
     ;; int32 _param7
       (write-long _param7 s)
     ;; int32 _param8
       (write-long _param8 s)
     ;; int32 _param9
       (write-long _param9 s)
     ;; int32 _param10
       (write-long _param10 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _command_type
     (setq _command_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _param1
     (setq _param1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _param2
     (setq _param2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _param3
     (setq _param3 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _param4
     (setq _param4 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _param5
     (setq _param5 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _param6
     (setq _param6 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _param7
     (setq _param7 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _param8
     (setq _param8 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _param9
     (setq _param9 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _param10
     (setq _param10 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get swarmtal_msgs::drone_onboard_command :md5sum-) "a5ca6aa226dc341da2ea852d685b0336")
(setf (get swarmtal_msgs::drone_onboard_command :datatype-) "swarmtal_msgs/drone_onboard_command")
(setf (get swarmtal_msgs::drone_onboard_command :definition-)
      "uint32 CTRL_POS_COMMAND=0
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



(provide :swarmtal_msgs/drone_onboard_command "a5ca6aa226dc341da2ea852d685b0336")


