; Auto-generated. Do not edit!


(cl:in-package swarmtal_msgs-msg)


;//! \htmlinclude drone_commander_state.msg.html

(cl:defclass <drone_commander_state> (roslisp-msg-protocol:ros-message)
  ((ctrl_input_state
    :reader ctrl_input_state
    :initarg :ctrl_input_state
    :type cl:integer
    :initform 0)
   (flight_status
    :reader flight_status
    :initarg :flight_status
    :type cl:integer
    :initform 0)
   (control_auth
    :reader control_auth
    :initarg :control_auth
    :type cl:integer
    :initform 0)
   (takeoff_target_height
    :reader takeoff_target_height
    :initarg :takeoff_target_height
    :type cl:float
    :initform 0.0)
   (takeoff_velocity
    :reader takeoff_velocity
    :initarg :takeoff_velocity
    :type cl:float
    :initform 0.0)
   (vo_latency
    :reader vo_latency
    :initarg :vo_latency
    :type cl:float
    :initform 0.0)
   (landing_mode
    :reader landing_mode
    :initarg :landing_mode
    :type cl:integer
    :initform 0)
   (landing_velocity
    :reader landing_velocity
    :initarg :landing_velocity
    :type cl:float
    :initform 0.0)
   (commander_ctrl_mode
    :reader commander_ctrl_mode
    :initarg :commander_ctrl_mode
    :type cl:integer
    :initform 0)
   (bat_vol
    :reader bat_vol
    :initarg :bat_vol
    :type cl:float
    :initform 0.0)
   (bat_remain
    :reader bat_remain
    :initarg :bat_remain
    :type cl:float
    :initform 0.0)
   (is_armed
    :reader is_armed
    :initarg :is_armed
    :type cl:boolean
    :initform cl:nil)
   (rc_valid
    :reader rc_valid
    :initarg :rc_valid
    :type cl:boolean
    :initform cl:nil)
   (onboard_cmd_valid
    :reader onboard_cmd_valid
    :initarg :onboard_cmd_valid
    :type cl:boolean
    :initform cl:nil)
   (vo_valid
    :reader vo_valid
    :initarg :vo_valid
    :type cl:boolean
    :initform cl:nil)
   (djisdk_valid
    :reader djisdk_valid
    :initarg :djisdk_valid
    :type cl:boolean
    :initform cl:nil)
   (pos
    :reader pos
    :initarg :pos
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (vel
    :reader vel
    :initarg :vel
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (ctrl_cmd
    :reader ctrl_cmd
    :initarg :ctrl_cmd
    :type swarmtal_msgs-msg:drone_pos_ctrl_cmd
    :initform (cl:make-instance 'swarmtal_msgs-msg:drone_pos_ctrl_cmd))
   (imu_data
    :reader imu_data
    :initarg :imu_data
    :type sensor_msgs-msg:Imu
    :initform (cl:make-instance 'sensor_msgs-msg:Imu)))
)

(cl:defclass drone_commander_state (<drone_commander_state>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <drone_commander_state>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'drone_commander_state)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swarmtal_msgs-msg:<drone_commander_state> is deprecated: use swarmtal_msgs-msg:drone_commander_state instead.")))

(cl:ensure-generic-function 'ctrl_input_state-val :lambda-list '(m))
(cl:defmethod ctrl_input_state-val ((m <drone_commander_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:ctrl_input_state-val is deprecated.  Use swarmtal_msgs-msg:ctrl_input_state instead.")
  (ctrl_input_state m))

(cl:ensure-generic-function 'flight_status-val :lambda-list '(m))
(cl:defmethod flight_status-val ((m <drone_commander_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:flight_status-val is deprecated.  Use swarmtal_msgs-msg:flight_status instead.")
  (flight_status m))

(cl:ensure-generic-function 'control_auth-val :lambda-list '(m))
(cl:defmethod control_auth-val ((m <drone_commander_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:control_auth-val is deprecated.  Use swarmtal_msgs-msg:control_auth instead.")
  (control_auth m))

(cl:ensure-generic-function 'takeoff_target_height-val :lambda-list '(m))
(cl:defmethod takeoff_target_height-val ((m <drone_commander_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:takeoff_target_height-val is deprecated.  Use swarmtal_msgs-msg:takeoff_target_height instead.")
  (takeoff_target_height m))

(cl:ensure-generic-function 'takeoff_velocity-val :lambda-list '(m))
(cl:defmethod takeoff_velocity-val ((m <drone_commander_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:takeoff_velocity-val is deprecated.  Use swarmtal_msgs-msg:takeoff_velocity instead.")
  (takeoff_velocity m))

(cl:ensure-generic-function 'vo_latency-val :lambda-list '(m))
(cl:defmethod vo_latency-val ((m <drone_commander_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:vo_latency-val is deprecated.  Use swarmtal_msgs-msg:vo_latency instead.")
  (vo_latency m))

(cl:ensure-generic-function 'landing_mode-val :lambda-list '(m))
(cl:defmethod landing_mode-val ((m <drone_commander_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:landing_mode-val is deprecated.  Use swarmtal_msgs-msg:landing_mode instead.")
  (landing_mode m))

(cl:ensure-generic-function 'landing_velocity-val :lambda-list '(m))
(cl:defmethod landing_velocity-val ((m <drone_commander_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:landing_velocity-val is deprecated.  Use swarmtal_msgs-msg:landing_velocity instead.")
  (landing_velocity m))

(cl:ensure-generic-function 'commander_ctrl_mode-val :lambda-list '(m))
(cl:defmethod commander_ctrl_mode-val ((m <drone_commander_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:commander_ctrl_mode-val is deprecated.  Use swarmtal_msgs-msg:commander_ctrl_mode instead.")
  (commander_ctrl_mode m))

(cl:ensure-generic-function 'bat_vol-val :lambda-list '(m))
(cl:defmethod bat_vol-val ((m <drone_commander_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:bat_vol-val is deprecated.  Use swarmtal_msgs-msg:bat_vol instead.")
  (bat_vol m))

(cl:ensure-generic-function 'bat_remain-val :lambda-list '(m))
(cl:defmethod bat_remain-val ((m <drone_commander_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:bat_remain-val is deprecated.  Use swarmtal_msgs-msg:bat_remain instead.")
  (bat_remain m))

(cl:ensure-generic-function 'is_armed-val :lambda-list '(m))
(cl:defmethod is_armed-val ((m <drone_commander_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:is_armed-val is deprecated.  Use swarmtal_msgs-msg:is_armed instead.")
  (is_armed m))

(cl:ensure-generic-function 'rc_valid-val :lambda-list '(m))
(cl:defmethod rc_valid-val ((m <drone_commander_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:rc_valid-val is deprecated.  Use swarmtal_msgs-msg:rc_valid instead.")
  (rc_valid m))

(cl:ensure-generic-function 'onboard_cmd_valid-val :lambda-list '(m))
(cl:defmethod onboard_cmd_valid-val ((m <drone_commander_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:onboard_cmd_valid-val is deprecated.  Use swarmtal_msgs-msg:onboard_cmd_valid instead.")
  (onboard_cmd_valid m))

(cl:ensure-generic-function 'vo_valid-val :lambda-list '(m))
(cl:defmethod vo_valid-val ((m <drone_commander_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:vo_valid-val is deprecated.  Use swarmtal_msgs-msg:vo_valid instead.")
  (vo_valid m))

(cl:ensure-generic-function 'djisdk_valid-val :lambda-list '(m))
(cl:defmethod djisdk_valid-val ((m <drone_commander_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:djisdk_valid-val is deprecated.  Use swarmtal_msgs-msg:djisdk_valid instead.")
  (djisdk_valid m))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <drone_commander_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:pos-val is deprecated.  Use swarmtal_msgs-msg:pos instead.")
  (pos m))

(cl:ensure-generic-function 'vel-val :lambda-list '(m))
(cl:defmethod vel-val ((m <drone_commander_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:vel-val is deprecated.  Use swarmtal_msgs-msg:vel instead.")
  (vel m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <drone_commander_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:yaw-val is deprecated.  Use swarmtal_msgs-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'ctrl_cmd-val :lambda-list '(m))
(cl:defmethod ctrl_cmd-val ((m <drone_commander_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:ctrl_cmd-val is deprecated.  Use swarmtal_msgs-msg:ctrl_cmd instead.")
  (ctrl_cmd m))

(cl:ensure-generic-function 'imu_data-val :lambda-list '(m))
(cl:defmethod imu_data-val ((m <drone_commander_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:imu_data-val is deprecated.  Use swarmtal_msgs-msg:imu_data instead.")
  (imu_data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<drone_commander_state>)))
    "Constants for message type '<drone_commander_state>"
  '((:CTRL_INPUT_NONE . 0)
    (:CTRL_INPUT_RC . 1)
    (:CTRL_INPUT_ONBOARD . 2)
    (:FLIGHT_STATUS_IDLE . 0)
    (:FLIGHT_STATUS_ARMED . 1)
    (:FLIGHT_STATUS_IN_AIR . 2)
    (:FLIGHT_STATUS_CRASHED . 3)
    (:CTRL_AUTH_RC . 0)
    (:CTRL_AUTH_APP . 1)
    (:CTRL_AUTH_THIS . 2)
    (:LANDING_MODE_XYVEL . 0)
    (:LANDING_MODE_ATT . 1)
    (:CTRL_MODE_IDLE . 0)
    (:CTRL_MODE_TAKEOFF . 1)
    (:CTRL_MODE_LANDING . 2)
    (:CTRL_MODE_HOVER . 3)
    (:CTRL_MODE_POSVEL . 4)
    (:CTRL_MODE_ATT . 5)
    (:CTRL_MODE_MISSION . 6))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'drone_commander_state)))
    "Constants for message type 'drone_commander_state"
  '((:CTRL_INPUT_NONE . 0)
    (:CTRL_INPUT_RC . 1)
    (:CTRL_INPUT_ONBOARD . 2)
    (:FLIGHT_STATUS_IDLE . 0)
    (:FLIGHT_STATUS_ARMED . 1)
    (:FLIGHT_STATUS_IN_AIR . 2)
    (:FLIGHT_STATUS_CRASHED . 3)
    (:CTRL_AUTH_RC . 0)
    (:CTRL_AUTH_APP . 1)
    (:CTRL_AUTH_THIS . 2)
    (:LANDING_MODE_XYVEL . 0)
    (:LANDING_MODE_ATT . 1)
    (:CTRL_MODE_IDLE . 0)
    (:CTRL_MODE_TAKEOFF . 1)
    (:CTRL_MODE_LANDING . 2)
    (:CTRL_MODE_HOVER . 3)
    (:CTRL_MODE_POSVEL . 4)
    (:CTRL_MODE_ATT . 5)
    (:CTRL_MODE_MISSION . 6))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <drone_commander_state>) ostream)
  "Serializes a message object of type '<drone_commander_state>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ctrl_input_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ctrl_input_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ctrl_input_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ctrl_input_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flight_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flight_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'flight_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'flight_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'control_auth)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'control_auth)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'control_auth)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'control_auth)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'takeoff_target_height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'takeoff_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vo_latency))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'landing_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'landing_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'landing_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'landing_mode)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'landing_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'commander_ctrl_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'commander_ctrl_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'commander_ctrl_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'commander_ctrl_mode)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'bat_vol))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'bat_remain))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_armed) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rc_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'onboard_cmd_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'vo_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'djisdk_valid) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pos) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vel) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ctrl_cmd) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'imu_data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <drone_commander_state>) istream)
  "Deserializes a message object of type '<drone_commander_state>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ctrl_input_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ctrl_input_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ctrl_input_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ctrl_input_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flight_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'flight_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'flight_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'flight_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'control_auth)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'control_auth)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'control_auth)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'control_auth)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'takeoff_target_height) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'takeoff_velocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vo_latency) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'landing_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'landing_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'landing_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'landing_mode)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'landing_velocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'commander_ctrl_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'commander_ctrl_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'commander_ctrl_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'commander_ctrl_mode)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bat_vol) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bat_remain) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'is_armed) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'rc_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'onboard_cmd_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'vo_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'djisdk_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pos) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vel) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ctrl_cmd) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'imu_data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<drone_commander_state>)))
  "Returns string type for a message object of type '<drone_commander_state>"
  "swarmtal_msgs/drone_commander_state")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'drone_commander_state)))
  "Returns string type for a message object of type 'drone_commander_state"
  "swarmtal_msgs/drone_commander_state")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<drone_commander_state>)))
  "Returns md5sum for a message object of type '<drone_commander_state>"
  "95ace68b12ed603a8645498808e5a9bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'drone_commander_state)))
  "Returns md5sum for a message object of type 'drone_commander_state"
  "95ace68b12ed603a8645498808e5a9bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<drone_commander_state>)))
  "Returns full string definition for message of type '<drone_commander_state>"
  (cl:format cl:nil "uint32 CTRL_INPUT_NONE=0~%uint32 CTRL_INPUT_RC=1~%uint32 CTRL_INPUT_ONBOARD=2~%~%uint32 ctrl_input_state~%~%~%uint32 FLIGHT_STATUS_IDLE=0 # Motor Stopped, on ground~%uint32 FLIGHT_STATUS_ARMED=1 # Armed, on ground~%uint32 FLIGHT_STATUS_IN_AIR=2 #Armed Inair~%uint32 FLIGHT_STATUS_CRASHED=3 # Crashed, Armed~%~%uint32 flight_status~%~%uint32 CTRL_AUTH_RC = 0~%uint32 CTRL_AUTH_APP = 1~%uint32 CTRL_AUTH_THIS = 2~%~%uint32 control_auth~%~%float64 takeoff_target_height~%float64 takeoff_velocity~%~%float32 vo_latency~%#0 vo landing~%#1 zero attitude landing~%~%uint32 LANDING_MODE_XYVEL = 0~%uint32 LANDING_MODE_ATT = 1~%~%uint32 landing_mode~%float64 landing_velocity~%~%uint32 CTRL_MODE_IDLE=0~%uint32 CTRL_MODE_TAKEOFF=1~%uint32 CTRL_MODE_LANDING=2~%uint32 CTRL_MODE_HOVER=3~%uint32 CTRL_MODE_POSVEL=4~%uint32 CTRL_MODE_ATT=5~%uint32 CTRL_MODE_MISSION=6~%~%uint32 commander_ctrl_mode~%~%float32 bat_vol~%float32 bat_remain~%~%bool is_armed~%bool rc_valid~%bool onboard_cmd_valid~%bool vo_valid~%bool djisdk_valid~%~%geometry_msgs/Point pos~%geometry_msgs/Point vel~%float64 yaw~%~%drone_pos_ctrl_cmd ctrl_cmd~%~%sensor_msgs/Imu imu_data~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: swarmtal_msgs/drone_pos_ctrl_cmd~%uint32 CTRL_CMD_IDLE_MODE = 0~%uint32 CTRL_CMD_VEL_MODE  = 1~%uint32 CTRL_CMD_POS_MODE  = 2~%uint32 CTRL_CMD_ATT_THRUST_MODE  = 3~%uint32 CTRL_CMD_ATT_VELZ_MODE  = 4~%~%uint32 ctrl_mode~%~%geometry_msgs/Vector3 pos_sp~%geometry_msgs/Vector3 vel_sp~%geometry_msgs/Vector3 acc_sp~%geometry_msgs/Quaternion att_sp~%float64 yaw_sp~%float64 z_sp~%~%bool use_fc_yaw~%~%geometry_msgs/Vector3 max_vel~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/Imu~%# This is a message to hold data from an IMU (Inertial Measurement Unit)~%#~%# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec~%#~%# If the covariance of the measurement is known, it should be filled in (if all you know is the ~%# variance of each measurement, e.g. from the datasheet, just put those along the diagonal)~%# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the~%# data a covariance will have to be assumed or gotten from some other source~%#~%# If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation ~%# estimate), please set element 0 of the associated covariance matrix to -1~%# If you are interpreting this message, please check for a value of -1 in the first element of each ~%# covariance matrix, and disregard the associated estimate.~%~%Header header~%~%geometry_msgs/Quaternion orientation~%float64[9] orientation_covariance # Row major about x, y, z axes~%~%geometry_msgs/Vector3 angular_velocity~%float64[9] angular_velocity_covariance # Row major about x, y, z axes~%~%geometry_msgs/Vector3 linear_acceleration~%float64[9] linear_acceleration_covariance # Row major x, y z ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'drone_commander_state)))
  "Returns full string definition for message of type 'drone_commander_state"
  (cl:format cl:nil "uint32 CTRL_INPUT_NONE=0~%uint32 CTRL_INPUT_RC=1~%uint32 CTRL_INPUT_ONBOARD=2~%~%uint32 ctrl_input_state~%~%~%uint32 FLIGHT_STATUS_IDLE=0 # Motor Stopped, on ground~%uint32 FLIGHT_STATUS_ARMED=1 # Armed, on ground~%uint32 FLIGHT_STATUS_IN_AIR=2 #Armed Inair~%uint32 FLIGHT_STATUS_CRASHED=3 # Crashed, Armed~%~%uint32 flight_status~%~%uint32 CTRL_AUTH_RC = 0~%uint32 CTRL_AUTH_APP = 1~%uint32 CTRL_AUTH_THIS = 2~%~%uint32 control_auth~%~%float64 takeoff_target_height~%float64 takeoff_velocity~%~%float32 vo_latency~%#0 vo landing~%#1 zero attitude landing~%~%uint32 LANDING_MODE_XYVEL = 0~%uint32 LANDING_MODE_ATT = 1~%~%uint32 landing_mode~%float64 landing_velocity~%~%uint32 CTRL_MODE_IDLE=0~%uint32 CTRL_MODE_TAKEOFF=1~%uint32 CTRL_MODE_LANDING=2~%uint32 CTRL_MODE_HOVER=3~%uint32 CTRL_MODE_POSVEL=4~%uint32 CTRL_MODE_ATT=5~%uint32 CTRL_MODE_MISSION=6~%~%uint32 commander_ctrl_mode~%~%float32 bat_vol~%float32 bat_remain~%~%bool is_armed~%bool rc_valid~%bool onboard_cmd_valid~%bool vo_valid~%bool djisdk_valid~%~%geometry_msgs/Point pos~%geometry_msgs/Point vel~%float64 yaw~%~%drone_pos_ctrl_cmd ctrl_cmd~%~%sensor_msgs/Imu imu_data~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: swarmtal_msgs/drone_pos_ctrl_cmd~%uint32 CTRL_CMD_IDLE_MODE = 0~%uint32 CTRL_CMD_VEL_MODE  = 1~%uint32 CTRL_CMD_POS_MODE  = 2~%uint32 CTRL_CMD_ATT_THRUST_MODE  = 3~%uint32 CTRL_CMD_ATT_VELZ_MODE  = 4~%~%uint32 ctrl_mode~%~%geometry_msgs/Vector3 pos_sp~%geometry_msgs/Vector3 vel_sp~%geometry_msgs/Vector3 acc_sp~%geometry_msgs/Quaternion att_sp~%float64 yaw_sp~%float64 z_sp~%~%bool use_fc_yaw~%~%geometry_msgs/Vector3 max_vel~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/Imu~%# This is a message to hold data from an IMU (Inertial Measurement Unit)~%#~%# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec~%#~%# If the covariance of the measurement is known, it should be filled in (if all you know is the ~%# variance of each measurement, e.g. from the datasheet, just put those along the diagonal)~%# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the~%# data a covariance will have to be assumed or gotten from some other source~%#~%# If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation ~%# estimate), please set element 0 of the associated covariance matrix to -1~%# If you are interpreting this message, please check for a value of -1 in the first element of each ~%# covariance matrix, and disregard the associated estimate.~%~%Header header~%~%geometry_msgs/Quaternion orientation~%float64[9] orientation_covariance # Row major about x, y, z axes~%~%geometry_msgs/Vector3 angular_velocity~%float64[9] angular_velocity_covariance # Row major about x, y, z axes~%~%geometry_msgs/Vector3 linear_acceleration~%float64[9] linear_acceleration_covariance # Row major x, y z ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <drone_commander_state>))
  (cl:+ 0
     4
     4
     4
     8
     8
     4
     4
     8
     4
     4
     4
     1
     1
     1
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pos))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vel))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ctrl_cmd))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'imu_data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <drone_commander_state>))
  "Converts a ROS message object to a list"
  (cl:list 'drone_commander_state
    (cl:cons ':ctrl_input_state (ctrl_input_state msg))
    (cl:cons ':flight_status (flight_status msg))
    (cl:cons ':control_auth (control_auth msg))
    (cl:cons ':takeoff_target_height (takeoff_target_height msg))
    (cl:cons ':takeoff_velocity (takeoff_velocity msg))
    (cl:cons ':vo_latency (vo_latency msg))
    (cl:cons ':landing_mode (landing_mode msg))
    (cl:cons ':landing_velocity (landing_velocity msg))
    (cl:cons ':commander_ctrl_mode (commander_ctrl_mode msg))
    (cl:cons ':bat_vol (bat_vol msg))
    (cl:cons ':bat_remain (bat_remain msg))
    (cl:cons ':is_armed (is_armed msg))
    (cl:cons ':rc_valid (rc_valid msg))
    (cl:cons ':onboard_cmd_valid (onboard_cmd_valid msg))
    (cl:cons ':vo_valid (vo_valid msg))
    (cl:cons ':djisdk_valid (djisdk_valid msg))
    (cl:cons ':pos (pos msg))
    (cl:cons ':vel (vel msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':ctrl_cmd (ctrl_cmd msg))
    (cl:cons ':imu_data (imu_data msg))
))
