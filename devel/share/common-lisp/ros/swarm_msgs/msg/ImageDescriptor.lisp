; Auto-generated. Do not edit!


(cl:in-package swarm_msgs-msg)


;//! \htmlinclude ImageDescriptor.msg.html

(cl:defclass <ImageDescriptor> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (drone_id
    :reader drone_id
    :initarg :drone_id
    :type cl:integer
    :initform 0)
   (feature_descriptor
    :reader feature_descriptor
    :initarg :feature_descriptor
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (pose_drone
    :reader pose_drone
    :initarg :pose_drone
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (camera_extrinsic
    :reader camera_extrinsic
    :initarg :camera_extrinsic
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (image_desc
    :reader image_desc
    :initarg :image_desc
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (image_width
    :reader image_width
    :initarg :image_width
    :type cl:integer
    :initform 0)
   (image_height
    :reader image_height
    :initarg :image_height
    :type cl:integer
    :initform 0)
   (image
    :reader image
    :initarg :image
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (landmarks_2d_norm
    :reader landmarks_2d_norm
    :initarg :landmarks_2d_norm
    :type (cl:vector geometry_msgs-msg:Point32)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point32 :initial-element (cl:make-instance 'geometry_msgs-msg:Point32)))
   (landmarks_2d
    :reader landmarks_2d
    :initarg :landmarks_2d
    :type (cl:vector geometry_msgs-msg:Point32)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point32 :initial-element (cl:make-instance 'geometry_msgs-msg:Point32)))
   (landmarks_3d
    :reader landmarks_3d
    :initarg :landmarks_3d
    :type (cl:vector geometry_msgs-msg:Point32)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point32 :initial-element (cl:make-instance 'geometry_msgs-msg:Point32)))
   (landmarks_flag
    :reader landmarks_flag
    :initarg :landmarks_flag
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (prevent_adding_db
    :reader prevent_adding_db
    :initarg :prevent_adding_db
    :type cl:boolean
    :initform cl:nil)
   (direction
    :reader direction
    :initarg :direction
    :type cl:integer
    :initform 0))
)

(cl:defclass ImageDescriptor (<ImageDescriptor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImageDescriptor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImageDescriptor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swarm_msgs-msg:<ImageDescriptor> is deprecated: use swarm_msgs-msg:ImageDescriptor instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ImageDescriptor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:header-val is deprecated.  Use swarm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'drone_id-val :lambda-list '(m))
(cl:defmethod drone_id-val ((m <ImageDescriptor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:drone_id-val is deprecated.  Use swarm_msgs-msg:drone_id instead.")
  (drone_id m))

(cl:ensure-generic-function 'feature_descriptor-val :lambda-list '(m))
(cl:defmethod feature_descriptor-val ((m <ImageDescriptor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:feature_descriptor-val is deprecated.  Use swarm_msgs-msg:feature_descriptor instead.")
  (feature_descriptor m))

(cl:ensure-generic-function 'pose_drone-val :lambda-list '(m))
(cl:defmethod pose_drone-val ((m <ImageDescriptor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:pose_drone-val is deprecated.  Use swarm_msgs-msg:pose_drone instead.")
  (pose_drone m))

(cl:ensure-generic-function 'camera_extrinsic-val :lambda-list '(m))
(cl:defmethod camera_extrinsic-val ((m <ImageDescriptor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:camera_extrinsic-val is deprecated.  Use swarm_msgs-msg:camera_extrinsic instead.")
  (camera_extrinsic m))

(cl:ensure-generic-function 'image_desc-val :lambda-list '(m))
(cl:defmethod image_desc-val ((m <ImageDescriptor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:image_desc-val is deprecated.  Use swarm_msgs-msg:image_desc instead.")
  (image_desc m))

(cl:ensure-generic-function 'image_width-val :lambda-list '(m))
(cl:defmethod image_width-val ((m <ImageDescriptor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:image_width-val is deprecated.  Use swarm_msgs-msg:image_width instead.")
  (image_width m))

(cl:ensure-generic-function 'image_height-val :lambda-list '(m))
(cl:defmethod image_height-val ((m <ImageDescriptor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:image_height-val is deprecated.  Use swarm_msgs-msg:image_height instead.")
  (image_height m))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <ImageDescriptor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:image-val is deprecated.  Use swarm_msgs-msg:image instead.")
  (image m))

(cl:ensure-generic-function 'landmarks_2d_norm-val :lambda-list '(m))
(cl:defmethod landmarks_2d_norm-val ((m <ImageDescriptor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:landmarks_2d_norm-val is deprecated.  Use swarm_msgs-msg:landmarks_2d_norm instead.")
  (landmarks_2d_norm m))

(cl:ensure-generic-function 'landmarks_2d-val :lambda-list '(m))
(cl:defmethod landmarks_2d-val ((m <ImageDescriptor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:landmarks_2d-val is deprecated.  Use swarm_msgs-msg:landmarks_2d instead.")
  (landmarks_2d m))

(cl:ensure-generic-function 'landmarks_3d-val :lambda-list '(m))
(cl:defmethod landmarks_3d-val ((m <ImageDescriptor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:landmarks_3d-val is deprecated.  Use swarm_msgs-msg:landmarks_3d instead.")
  (landmarks_3d m))

(cl:ensure-generic-function 'landmarks_flag-val :lambda-list '(m))
(cl:defmethod landmarks_flag-val ((m <ImageDescriptor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:landmarks_flag-val is deprecated.  Use swarm_msgs-msg:landmarks_flag instead.")
  (landmarks_flag m))

(cl:ensure-generic-function 'prevent_adding_db-val :lambda-list '(m))
(cl:defmethod prevent_adding_db-val ((m <ImageDescriptor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:prevent_adding_db-val is deprecated.  Use swarm_msgs-msg:prevent_adding_db instead.")
  (prevent_adding_db m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <ImageDescriptor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:direction-val is deprecated.  Use swarm_msgs-msg:direction instead.")
  (direction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImageDescriptor>) ostream)
  "Serializes a message object of type '<ImageDescriptor>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'drone_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'feature_descriptor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'feature_descriptor))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose_drone) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_extrinsic) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'image_desc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'image_desc))
  (cl:let* ((signed (cl:slot-value msg 'image_width)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'image_height)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'image))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'image))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'landmarks_2d_norm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'landmarks_2d_norm))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'landmarks_2d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'landmarks_2d))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'landmarks_3d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'landmarks_3d))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'landmarks_flag))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'landmarks_flag))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'prevent_adding_db) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'direction)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImageDescriptor>) istream)
  "Deserializes a message object of type '<ImageDescriptor>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'drone_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'feature_descriptor) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'feature_descriptor)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose_drone) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_extrinsic) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'image_desc) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'image_desc)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'image_width) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'image_height) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'image) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'image)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'landmarks_2d_norm) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'landmarks_2d_norm)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point32))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'landmarks_2d) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'landmarks_2d)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point32))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'landmarks_3d) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'landmarks_3d)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point32))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'landmarks_flag) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'landmarks_flag)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'prevent_adding_db) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'direction) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImageDescriptor>)))
  "Returns string type for a message object of type '<ImageDescriptor>"
  "swarm_msgs/ImageDescriptor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImageDescriptor)))
  "Returns string type for a message object of type 'ImageDescriptor"
  "swarm_msgs/ImageDescriptor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImageDescriptor>)))
  "Returns md5sum for a message object of type '<ImageDescriptor>"
  "4f5e8e454632afe4a9ed9bcee95f3cff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImageDescriptor)))
  "Returns md5sum for a message object of type 'ImageDescriptor"
  "4f5e8e454632afe4a9ed9bcee95f3cff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImageDescriptor>)))
  "Returns full string definition for message of type '<ImageDescriptor>"
  (cl:format cl:nil "Header header~%int32 drone_id~%~%float32[] feature_descriptor~%~%geometry_msgs/Pose pose_drone~%geometry_msgs/Pose camera_extrinsic~%~%float32[] image_desc~%int32 image_width~%int32 image_height~%uint8[] image~%~%geometry_msgs/Point32[] landmarks_2d_norm~%geometry_msgs/Point32[] landmarks_2d~%geometry_msgs/Point32[] landmarks_3d~%uint8[] landmarks_flag~%bool prevent_adding_db~%~%int32 direction~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImageDescriptor)))
  "Returns full string definition for message of type 'ImageDescriptor"
  (cl:format cl:nil "Header header~%int32 drone_id~%~%float32[] feature_descriptor~%~%geometry_msgs/Pose pose_drone~%geometry_msgs/Pose camera_extrinsic~%~%float32[] image_desc~%int32 image_width~%int32 image_height~%uint8[] image~%~%geometry_msgs/Point32[] landmarks_2d_norm~%geometry_msgs/Point32[] landmarks_2d~%geometry_msgs/Point32[] landmarks_3d~%uint8[] landmarks_flag~%bool prevent_adding_db~%~%int32 direction~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImageDescriptor>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'feature_descriptor) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose_drone))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_extrinsic))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'image_desc) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'image) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'landmarks_2d_norm) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'landmarks_2d) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'landmarks_3d) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'landmarks_flag) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImageDescriptor>))
  "Converts a ROS message object to a list"
  (cl:list 'ImageDescriptor
    (cl:cons ':header (header msg))
    (cl:cons ':drone_id (drone_id msg))
    (cl:cons ':feature_descriptor (feature_descriptor msg))
    (cl:cons ':pose_drone (pose_drone msg))
    (cl:cons ':camera_extrinsic (camera_extrinsic msg))
    (cl:cons ':image_desc (image_desc msg))
    (cl:cons ':image_width (image_width msg))
    (cl:cons ':image_height (image_height msg))
    (cl:cons ':image (image msg))
    (cl:cons ':landmarks_2d_norm (landmarks_2d_norm msg))
    (cl:cons ':landmarks_2d (landmarks_2d msg))
    (cl:cons ':landmarks_3d (landmarks_3d msg))
    (cl:cons ':landmarks_flag (landmarks_flag msg))
    (cl:cons ':prevent_adding_db (prevent_adding_db msg))
    (cl:cons ':direction (direction msg))
))
