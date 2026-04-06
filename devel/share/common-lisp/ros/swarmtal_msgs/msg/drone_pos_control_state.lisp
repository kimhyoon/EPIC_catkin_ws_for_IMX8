; Auto-generated. Do not edit!


(cl:in-package swarmtal_msgs-msg)


;//! \htmlinclude drone_pos_control_state.msg.html

(cl:defclass <drone_pos_control_state> (roslisp-msg-protocol:ros-message)
  ((Header
    :reader Header
    :initarg :Header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (imu_data
    :reader imu_data
    :initarg :imu_data
    :type sensor_msgs-msg:Imu
    :initform (cl:make-instance 'sensor_msgs-msg:Imu))
   (pitch_cmd
    :reader pitch_cmd
    :initarg :pitch_cmd
    :type cl:float
    :initform 0.0)
   (roll_cmd
    :reader roll_cmd
    :initarg :roll_cmd
    :type cl:float
    :initform 0.0)
   (yaw_cmd
    :reader yaw_cmd
    :initarg :yaw_cmd
    :type cl:float
    :initform 0.0)
   (thrust_cmd
    :reader thrust_cmd
    :initarg :thrust_cmd
    :type cl:float
    :initform 0.0)
   (pitch
    :reader pitch
    :initarg :pitch
    :type cl:float
    :initform 0.0)
   (roll
    :reader roll
    :initarg :roll
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (yaw_sp
    :reader yaw_sp
    :initarg :yaw_sp
    :type cl:float
    :initform 0.0)
   (acc_cmd
    :reader acc_cmd
    :initarg :acc_cmd
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (vel_cmd
    :reader vel_cmd
    :initarg :vel_cmd
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (global_vel
    :reader global_vel
    :initarg :global_vel
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (pos_sp
    :reader pos_sp
    :initarg :pos_sp
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (ctrl_mode
    :reader ctrl_mode
    :initarg :ctrl_mode
    :type cl:integer
    :initform 0)
   (use_fc_yaw
    :reader use_fc_yaw
    :initarg :use_fc_yaw
    :type cl:boolean
    :initform cl:nil)
   (count
    :reader count
    :initarg :count
    :type cl:integer
    :initform 0)
   (max_vel
    :reader max_vel
    :initarg :max_vel
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass drone_pos_control_state (<drone_pos_control_state>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <drone_pos_control_state>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'drone_pos_control_state)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swarmtal_msgs-msg:<drone_pos_control_state> is deprecated: use swarmtal_msgs-msg:drone_pos_control_state instead.")))

(cl:ensure-generic-function 'Header-val :lambda-list '(m))
(cl:defmethod Header-val ((m <drone_pos_control_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:Header-val is deprecated.  Use swarmtal_msgs-msg:Header instead.")
  (Header m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <drone_pos_control_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:pose-val is deprecated.  Use swarmtal_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'imu_data-val :lambda-list '(m))
(cl:defmethod imu_data-val ((m <drone_pos_control_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:imu_data-val is deprecated.  Use swarmtal_msgs-msg:imu_data instead.")
  (imu_data m))

(cl:ensure-generic-function 'pitch_cmd-val :lambda-list '(m))
(cl:defmethod pitch_cmd-val ((m <drone_pos_control_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:pitch_cmd-val is deprecated.  Use swarmtal_msgs-msg:pitch_cmd instead.")
  (pitch_cmd m))

(cl:ensure-generic-function 'roll_cmd-val :lambda-list '(m))
(cl:defmethod roll_cmd-val ((m <drone_pos_control_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:roll_cmd-val is deprecated.  Use swarmtal_msgs-msg:roll_cmd instead.")
  (roll_cmd m))

(cl:ensure-generic-function 'yaw_cmd-val :lambda-list '(m))
(cl:defmethod yaw_cmd-val ((m <drone_pos_control_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:yaw_cmd-val is deprecated.  Use swarmtal_msgs-msg:yaw_cmd instead.")
  (yaw_cmd m))

(cl:ensure-generic-function 'thrust_cmd-val :lambda-list '(m))
(cl:defmethod thrust_cmd-val ((m <drone_pos_control_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:thrust_cmd-val is deprecated.  Use swarmtal_msgs-msg:thrust_cmd instead.")
  (thrust_cmd m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <drone_pos_control_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:pitch-val is deprecated.  Use swarmtal_msgs-msg:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <drone_pos_control_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:roll-val is deprecated.  Use swarmtal_msgs-msg:roll instead.")
  (roll m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <drone_pos_control_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:yaw-val is deprecated.  Use swarmtal_msgs-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'yaw_sp-val :lambda-list '(m))
(cl:defmethod yaw_sp-val ((m <drone_pos_control_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:yaw_sp-val is deprecated.  Use swarmtal_msgs-msg:yaw_sp instead.")
  (yaw_sp m))

(cl:ensure-generic-function 'acc_cmd-val :lambda-list '(m))
(cl:defmethod acc_cmd-val ((m <drone_pos_control_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:acc_cmd-val is deprecated.  Use swarmtal_msgs-msg:acc_cmd instead.")
  (acc_cmd m))

(cl:ensure-generic-function 'vel_cmd-val :lambda-list '(m))
(cl:defmethod vel_cmd-val ((m <drone_pos_control_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:vel_cmd-val is deprecated.  Use swarmtal_msgs-msg:vel_cmd instead.")
  (vel_cmd m))

(cl:ensure-generic-function 'global_vel-val :lambda-list '(m))
(cl:defmethod global_vel-val ((m <drone_pos_control_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:global_vel-val is deprecated.  Use swarmtal_msgs-msg:global_vel instead.")
  (global_vel m))

(cl:ensure-generic-function 'pos_sp-val :lambda-list '(m))
(cl:defmethod pos_sp-val ((m <drone_pos_control_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:pos_sp-val is deprecated.  Use swarmtal_msgs-msg:pos_sp instead.")
  (pos_sp m))

(cl:ensure-generic-function 'ctrl_mode-val :lambda-list '(m))
(cl:defmethod ctrl_mode-val ((m <drone_pos_control_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:ctrl_mode-val is deprecated.  Use swarmtal_msgs-msg:ctrl_mode instead.")
  (ctrl_mode m))

(cl:ensure-generic-function 'use_fc_yaw-val :lambda-list '(m))
(cl:defmethod use_fc_yaw-val ((m <drone_pos_control_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:use_fc_yaw-val is deprecated.  Use swarmtal_msgs-msg:use_fc_yaw instead.")
  (use_fc_yaw m))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <drone_pos_control_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:count-val is deprecated.  Use swarmtal_msgs-msg:count instead.")
  (count m))

(cl:ensure-generic-function 'max_vel-val :lambda-list '(m))
(cl:defmethod max_vel-val ((m <drone_pos_control_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarmtal_msgs-msg:max_vel-val is deprecated.  Use swarmtal_msgs-msg:max_vel instead.")
  (max_vel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <drone_pos_control_state>) ostream)
  "Serializes a message object of type '<drone_pos_control_state>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'imu_data) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pitch_cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'roll_cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw_cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'thrust_cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw_sp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acc_cmd) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vel_cmd) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'global_vel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pos_sp) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ctrl_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ctrl_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ctrl_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ctrl_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_fc_yaw) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'count)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'max_vel) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <drone_pos_control_state>) istream)
  "Deserializes a message object of type '<drone_pos_control_state>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'imu_data) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch_cmd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roll_cmd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw_cmd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'thrust_cmd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roll) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw_sp) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acc_cmd) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vel_cmd) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'global_vel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pos_sp) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ctrl_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ctrl_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ctrl_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ctrl_mode)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'use_fc_yaw) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'count)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'max_vel) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<drone_pos_control_state>)))
  "Returns string type for a message object of type '<drone_pos_control_state>"
  "swarmtal_msgs/drone_pos_control_state")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'drone_pos_control_state)))
  "Returns string type for a message object of type 'drone_pos_control_state"
  "swarmtal_msgs/drone_pos_control_state")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<drone_pos_control_state>)))
  "Returns md5sum for a message object of type '<drone_pos_control_state>"
  "1284e85c66442b438c82756d23002796")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'drone_pos_control_state)))
  "Returns md5sum for a message object of type 'drone_pos_control_state"
  "1284e85c66442b438c82756d23002796")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<drone_pos_control_state>)))
  "Returns full string definition for message of type '<drone_pos_control_state>"
  (cl:format cl:nil "Header Header~%~%geometry_msgs/Pose pose~%sensor_msgs/Imu imu_data~%float32 pitch_cmd~%float32 roll_cmd~%float32 yaw_cmd~%float32 thrust_cmd~%~%float32 pitch~%float32 roll~%float32 yaw~%~%float32 yaw_sp~%~%geometry_msgs/Vector3 acc_cmd~%geometry_msgs/Vector3 vel_cmd~%geometry_msgs/Vector3 global_vel~%~%geometry_msgs/Vector3 pos_sp~%~%uint32 ctrl_mode~%~%bool use_fc_yaw~%~%uint64 count~%~%geometry_msgs/Vector3 max_vel~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/Imu~%# This is a message to hold data from an IMU (Inertial Measurement Unit)~%#~%# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec~%#~%# If the covariance of the measurement is known, it should be filled in (if all you know is the ~%# variance of each measurement, e.g. from the datasheet, just put those along the diagonal)~%# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the~%# data a covariance will have to be assumed or gotten from some other source~%#~%# If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation ~%# estimate), please set element 0 of the associated covariance matrix to -1~%# If you are interpreting this message, please check for a value of -1 in the first element of each ~%# covariance matrix, and disregard the associated estimate.~%~%Header header~%~%geometry_msgs/Quaternion orientation~%float64[9] orientation_covariance # Row major about x, y, z axes~%~%geometry_msgs/Vector3 angular_velocity~%float64[9] angular_velocity_covariance # Row major about x, y, z axes~%~%geometry_msgs/Vector3 linear_acceleration~%float64[9] linear_acceleration_covariance # Row major x, y z ~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'drone_pos_control_state)))
  "Returns full string definition for message of type 'drone_pos_control_state"
  (cl:format cl:nil "Header Header~%~%geometry_msgs/Pose pose~%sensor_msgs/Imu imu_data~%float32 pitch_cmd~%float32 roll_cmd~%float32 yaw_cmd~%float32 thrust_cmd~%~%float32 pitch~%float32 roll~%float32 yaw~%~%float32 yaw_sp~%~%geometry_msgs/Vector3 acc_cmd~%geometry_msgs/Vector3 vel_cmd~%geometry_msgs/Vector3 global_vel~%~%geometry_msgs/Vector3 pos_sp~%~%uint32 ctrl_mode~%~%bool use_fc_yaw~%~%uint64 count~%~%geometry_msgs/Vector3 max_vel~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/Imu~%# This is a message to hold data from an IMU (Inertial Measurement Unit)~%#~%# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec~%#~%# If the covariance of the measurement is known, it should be filled in (if all you know is the ~%# variance of each measurement, e.g. from the datasheet, just put those along the diagonal)~%# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the~%# data a covariance will have to be assumed or gotten from some other source~%#~%# If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation ~%# estimate), please set element 0 of the associated covariance matrix to -1~%# If you are interpreting this message, please check for a value of -1 in the first element of each ~%# covariance matrix, and disregard the associated estimate.~%~%Header header~%~%geometry_msgs/Quaternion orientation~%float64[9] orientation_covariance # Row major about x, y, z axes~%~%geometry_msgs/Vector3 angular_velocity~%float64[9] angular_velocity_covariance # Row major about x, y, z axes~%~%geometry_msgs/Vector3 linear_acceleration~%float64[9] linear_acceleration_covariance # Row major x, y z ~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <drone_pos_control_state>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'imu_data))
     4
     4
     4
     4
     4
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acc_cmd))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vel_cmd))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'global_vel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pos_sp))
     4
     1
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'max_vel))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <drone_pos_control_state>))
  "Converts a ROS message object to a list"
  (cl:list 'drone_pos_control_state
    (cl:cons ':Header (Header msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':imu_data (imu_data msg))
    (cl:cons ':pitch_cmd (pitch_cmd msg))
    (cl:cons ':roll_cmd (roll_cmd msg))
    (cl:cons ':yaw_cmd (yaw_cmd msg))
    (cl:cons ':thrust_cmd (thrust_cmd msg))
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':roll (roll msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':yaw_sp (yaw_sp msg))
    (cl:cons ':acc_cmd (acc_cmd msg))
    (cl:cons ':vel_cmd (vel_cmd msg))
    (cl:cons ':global_vel (global_vel msg))
    (cl:cons ':pos_sp (pos_sp msg))
    (cl:cons ':ctrl_mode (ctrl_mode msg))
    (cl:cons ':use_fc_yaw (use_fc_yaw msg))
    (cl:cons ':count (count msg))
    (cl:cons ':max_vel (max_vel msg))
))
