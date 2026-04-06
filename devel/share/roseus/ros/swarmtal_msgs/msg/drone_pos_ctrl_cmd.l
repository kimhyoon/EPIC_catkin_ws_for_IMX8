;; Auto-generated. Do not edit!


(when (boundp 'swarmtal_msgs::drone_pos_ctrl_cmd)
  (if (not (find-package "SWARMTAL_MSGS"))
    (make-package "SWARMTAL_MSGS"))
  (shadow 'drone_pos_ctrl_cmd (find-package "SWARMTAL_MSGS")))
(unless (find-package "SWARMTAL_MSGS::DRONE_POS_CTRL_CMD")
  (make-package "SWARMTAL_MSGS::DRONE_POS_CTRL_CMD"))

(in-package "ROS")
;;//! \htmlinclude drone_pos_ctrl_cmd.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*CTRL_CMD_IDLE_MODE*" (find-package "SWARMTAL_MSGS::DRONE_POS_CTRL_CMD"))
(shadow '*CTRL_CMD_IDLE_MODE* (find-package "SWARMTAL_MSGS::DRONE_POS_CTRL_CMD"))
(defconstant swarmtal_msgs::drone_pos_ctrl_cmd::*CTRL_CMD_IDLE_MODE* 0)
(intern "*CTRL_CMD_VEL_MODE*" (find-package "SWARMTAL_MSGS::DRONE_POS_CTRL_CMD"))
(shadow '*CTRL_CMD_VEL_MODE* (find-package "SWARMTAL_MSGS::DRONE_POS_CTRL_CMD"))
(defconstant swarmtal_msgs::drone_pos_ctrl_cmd::*CTRL_CMD_VEL_MODE* 1)
(intern "*CTRL_CMD_POS_MODE*" (find-package "SWARMTAL_MSGS::DRONE_POS_CTRL_CMD"))
(shadow '*CTRL_CMD_POS_MODE* (find-package "SWARMTAL_MSGS::DRONE_POS_CTRL_CMD"))
(defconstant swarmtal_msgs::drone_pos_ctrl_cmd::*CTRL_CMD_POS_MODE* 2)
(intern "*CTRL_CMD_ATT_THRUST_MODE*" (find-package "SWARMTAL_MSGS::DRONE_POS_CTRL_CMD"))
(shadow '*CTRL_CMD_ATT_THRUST_MODE* (find-package "SWARMTAL_MSGS::DRONE_POS_CTRL_CMD"))
(defconstant swarmtal_msgs::drone_pos_ctrl_cmd::*CTRL_CMD_ATT_THRUST_MODE* 3)
(intern "*CTRL_CMD_ATT_VELZ_MODE*" (find-package "SWARMTAL_MSGS::DRONE_POS_CTRL_CMD"))
(shadow '*CTRL_CMD_ATT_VELZ_MODE* (find-package "SWARMTAL_MSGS::DRONE_POS_CTRL_CMD"))
(defconstant swarmtal_msgs::drone_pos_ctrl_cmd::*CTRL_CMD_ATT_VELZ_MODE* 4)

(defun swarmtal_msgs::drone_pos_ctrl_cmd-to-symbol (const)
  (cond
        ((= const 0) 'swarmtal_msgs::drone_pos_ctrl_cmd::*CTRL_CMD_IDLE_MODE*)
        ((= const 1) 'swarmtal_msgs::drone_pos_ctrl_cmd::*CTRL_CMD_VEL_MODE*)
        ((= const 2) 'swarmtal_msgs::drone_pos_ctrl_cmd::*CTRL_CMD_POS_MODE*)
        ((= const 3) 'swarmtal_msgs::drone_pos_ctrl_cmd::*CTRL_CMD_ATT_THRUST_MODE*)
        ((= const 4) 'swarmtal_msgs::drone_pos_ctrl_cmd::*CTRL_CMD_ATT_VELZ_MODE*)
        (t nil)))

(defclass swarmtal_msgs::drone_pos_ctrl_cmd
  :super ros::object
  :slots (_ctrl_mode _pos_sp _vel_sp _acc_sp _att_sp _yaw_sp _z_sp _use_fc_yaw _max_vel ))

(defmethod swarmtal_msgs::drone_pos_ctrl_cmd
  (:init
   (&key
    ((:ctrl_mode __ctrl_mode) 0)
    ((:pos_sp __pos_sp) (instance geometry_msgs::Vector3 :init))
    ((:vel_sp __vel_sp) (instance geometry_msgs::Vector3 :init))
    ((:acc_sp __acc_sp) (instance geometry_msgs::Vector3 :init))
    ((:att_sp __att_sp) (instance geometry_msgs::Quaternion :init))
    ((:yaw_sp __yaw_sp) 0.0)
    ((:z_sp __z_sp) 0.0)
    ((:use_fc_yaw __use_fc_yaw) nil)
    ((:max_vel __max_vel) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _ctrl_mode (round __ctrl_mode))
   (setq _pos_sp __pos_sp)
   (setq _vel_sp __vel_sp)
   (setq _acc_sp __acc_sp)
   (setq _att_sp __att_sp)
   (setq _yaw_sp (float __yaw_sp))
   (setq _z_sp (float __z_sp))
   (setq _use_fc_yaw __use_fc_yaw)
   (setq _max_vel __max_vel)
   self)
  (:ctrl_mode
   (&optional __ctrl_mode)
   (if __ctrl_mode (setq _ctrl_mode __ctrl_mode)) _ctrl_mode)
  (:pos_sp
   (&rest __pos_sp)
   (if (keywordp (car __pos_sp))
       (send* _pos_sp __pos_sp)
     (progn
       (if __pos_sp (setq _pos_sp (car __pos_sp)))
       _pos_sp)))
  (:vel_sp
   (&rest __vel_sp)
   (if (keywordp (car __vel_sp))
       (send* _vel_sp __vel_sp)
     (progn
       (if __vel_sp (setq _vel_sp (car __vel_sp)))
       _vel_sp)))
  (:acc_sp
   (&rest __acc_sp)
   (if (keywordp (car __acc_sp))
       (send* _acc_sp __acc_sp)
     (progn
       (if __acc_sp (setq _acc_sp (car __acc_sp)))
       _acc_sp)))
  (:att_sp
   (&rest __att_sp)
   (if (keywordp (car __att_sp))
       (send* _att_sp __att_sp)
     (progn
       (if __att_sp (setq _att_sp (car __att_sp)))
       _att_sp)))
  (:yaw_sp
   (&optional __yaw_sp)
   (if __yaw_sp (setq _yaw_sp __yaw_sp)) _yaw_sp)
  (:z_sp
   (&optional __z_sp)
   (if __z_sp (setq _z_sp __z_sp)) _z_sp)
  (:use_fc_yaw
   (&optional (__use_fc_yaw :null))
   (if (not (eq __use_fc_yaw :null)) (setq _use_fc_yaw __use_fc_yaw)) _use_fc_yaw)
  (:max_vel
   (&rest __max_vel)
   (if (keywordp (car __max_vel))
       (send* _max_vel __max_vel)
     (progn
       (if __max_vel (setq _max_vel (car __max_vel)))
       _max_vel)))
  (:serialization-length
   ()
   (+
    ;; uint32 _ctrl_mode
    4
    ;; geometry_msgs/Vector3 _pos_sp
    (send _pos_sp :serialization-length)
    ;; geometry_msgs/Vector3 _vel_sp
    (send _vel_sp :serialization-length)
    ;; geometry_msgs/Vector3 _acc_sp
    (send _acc_sp :serialization-length)
    ;; geometry_msgs/Quaternion _att_sp
    (send _att_sp :serialization-length)
    ;; float64 _yaw_sp
    8
    ;; float64 _z_sp
    8
    ;; bool _use_fc_yaw
    1
    ;; geometry_msgs/Vector3 _max_vel
    (send _max_vel :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _ctrl_mode
       (write-long _ctrl_mode s)
     ;; geometry_msgs/Vector3 _pos_sp
       (send _pos_sp :serialize s)
     ;; geometry_msgs/Vector3 _vel_sp
       (send _vel_sp :serialize s)
     ;; geometry_msgs/Vector3 _acc_sp
       (send _acc_sp :serialize s)
     ;; geometry_msgs/Quaternion _att_sp
       (send _att_sp :serialize s)
     ;; float64 _yaw_sp
       (sys::poke _yaw_sp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z_sp
       (sys::poke _z_sp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _use_fc_yaw
       (if _use_fc_yaw (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Vector3 _max_vel
       (send _max_vel :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _ctrl_mode
     (setq _ctrl_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Vector3 _pos_sp
     (send _pos_sp :deserialize buf ptr-) (incf ptr- (send _pos_sp :serialization-length))
   ;; geometry_msgs/Vector3 _vel_sp
     (send _vel_sp :deserialize buf ptr-) (incf ptr- (send _vel_sp :serialization-length))
   ;; geometry_msgs/Vector3 _acc_sp
     (send _acc_sp :deserialize buf ptr-) (incf ptr- (send _acc_sp :serialization-length))
   ;; geometry_msgs/Quaternion _att_sp
     (send _att_sp :deserialize buf ptr-) (incf ptr- (send _att_sp :serialization-length))
   ;; float64 _yaw_sp
     (setq _yaw_sp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z_sp
     (setq _z_sp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _use_fc_yaw
     (setq _use_fc_yaw (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Vector3 _max_vel
     (send _max_vel :deserialize buf ptr-) (incf ptr- (send _max_vel :serialization-length))
   ;;
   self)
  )

(setf (get swarmtal_msgs::drone_pos_ctrl_cmd :md5sum-) "af8791618f25096214834155fb70f593")
(setf (get swarmtal_msgs::drone_pos_ctrl_cmd :datatype-) "swarmtal_msgs/drone_pos_ctrl_cmd")
(setf (get swarmtal_msgs::drone_pos_ctrl_cmd :definition-)
      "uint32 CTRL_CMD_IDLE_MODE = 0
uint32 CTRL_CMD_VEL_MODE  = 1
uint32 CTRL_CMD_POS_MODE  = 2
uint32 CTRL_CMD_ATT_THRUST_MODE  = 3
uint32 CTRL_CMD_ATT_VELZ_MODE  = 4

uint32 ctrl_mode

geometry_msgs/Vector3 pos_sp
geometry_msgs/Vector3 vel_sp
geometry_msgs/Vector3 acc_sp
geometry_msgs/Quaternion att_sp
float64 yaw_sp
float64 z_sp

bool use_fc_yaw

geometry_msgs/Vector3 max_vel
================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :swarmtal_msgs/drone_pos_ctrl_cmd "af8791618f25096214834155fb70f593")


