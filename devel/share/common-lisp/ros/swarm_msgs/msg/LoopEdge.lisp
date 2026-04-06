; Auto-generated. Do not edit!


(cl:in-package swarm_msgs-msg)


;//! \htmlinclude LoopEdge.msg.html

(cl:defclass <LoopEdge> (roslisp-msg-protocol:ros-message)
  ((ts_a
    :reader ts_a
    :initarg :ts_a
    :type cl:real
    :initform 0)
   (ts_b
    :reader ts_b
    :initarg :ts_b
    :type cl:real
    :initform 0)
   (drone_id_a
    :reader drone_id_a
    :initarg :drone_id_a
    :type cl:integer
    :initform 0)
   (drone_id_b
    :reader drone_id_b
    :initarg :drone_id_b
    :type cl:integer
    :initform 0)
   (keyframe_id_a
    :reader keyframe_id_a
    :initarg :keyframe_id_a
    :type cl:integer
    :initform 0)
   (keyframe_id_b
    :reader keyframe_id_b
    :initarg :keyframe_id_b
    :type cl:integer
    :initform 0)
   (relative_pose
    :reader relative_pose
    :initarg :relative_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (self_pose_a
    :reader self_pose_a
    :initarg :self_pose_a
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (self_pose_b
    :reader self_pose_b
    :initarg :self_pose_b
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (pos_cov
    :reader pos_cov
    :initarg :pos_cov
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (ang_cov
    :reader ang_cov
    :initarg :ang_cov
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (pnp_inlier_num
    :reader pnp_inlier_num
    :initarg :pnp_inlier_num
    :type cl:integer
    :initform 0)
   (is_4dof
    :reader is_4dof
    :initarg :is_4dof
    :type cl:boolean
    :initform cl:nil)
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass LoopEdge (<LoopEdge>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoopEdge>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoopEdge)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swarm_msgs-msg:<LoopEdge> is deprecated: use swarm_msgs-msg:LoopEdge instead.")))

(cl:ensure-generic-function 'ts_a-val :lambda-list '(m))
(cl:defmethod ts_a-val ((m <LoopEdge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:ts_a-val is deprecated.  Use swarm_msgs-msg:ts_a instead.")
  (ts_a m))

(cl:ensure-generic-function 'ts_b-val :lambda-list '(m))
(cl:defmethod ts_b-val ((m <LoopEdge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:ts_b-val is deprecated.  Use swarm_msgs-msg:ts_b instead.")
  (ts_b m))

(cl:ensure-generic-function 'drone_id_a-val :lambda-list '(m))
(cl:defmethod drone_id_a-val ((m <LoopEdge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:drone_id_a-val is deprecated.  Use swarm_msgs-msg:drone_id_a instead.")
  (drone_id_a m))

(cl:ensure-generic-function 'drone_id_b-val :lambda-list '(m))
(cl:defmethod drone_id_b-val ((m <LoopEdge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:drone_id_b-val is deprecated.  Use swarm_msgs-msg:drone_id_b instead.")
  (drone_id_b m))

(cl:ensure-generic-function 'keyframe_id_a-val :lambda-list '(m))
(cl:defmethod keyframe_id_a-val ((m <LoopEdge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:keyframe_id_a-val is deprecated.  Use swarm_msgs-msg:keyframe_id_a instead.")
  (keyframe_id_a m))

(cl:ensure-generic-function 'keyframe_id_b-val :lambda-list '(m))
(cl:defmethod keyframe_id_b-val ((m <LoopEdge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:keyframe_id_b-val is deprecated.  Use swarm_msgs-msg:keyframe_id_b instead.")
  (keyframe_id_b m))

(cl:ensure-generic-function 'relative_pose-val :lambda-list '(m))
(cl:defmethod relative_pose-val ((m <LoopEdge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:relative_pose-val is deprecated.  Use swarm_msgs-msg:relative_pose instead.")
  (relative_pose m))

(cl:ensure-generic-function 'self_pose_a-val :lambda-list '(m))
(cl:defmethod self_pose_a-val ((m <LoopEdge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:self_pose_a-val is deprecated.  Use swarm_msgs-msg:self_pose_a instead.")
  (self_pose_a m))

(cl:ensure-generic-function 'self_pose_b-val :lambda-list '(m))
(cl:defmethod self_pose_b-val ((m <LoopEdge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:self_pose_b-val is deprecated.  Use swarm_msgs-msg:self_pose_b instead.")
  (self_pose_b m))

(cl:ensure-generic-function 'pos_cov-val :lambda-list '(m))
(cl:defmethod pos_cov-val ((m <LoopEdge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:pos_cov-val is deprecated.  Use swarm_msgs-msg:pos_cov instead.")
  (pos_cov m))

(cl:ensure-generic-function 'ang_cov-val :lambda-list '(m))
(cl:defmethod ang_cov-val ((m <LoopEdge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:ang_cov-val is deprecated.  Use swarm_msgs-msg:ang_cov instead.")
  (ang_cov m))

(cl:ensure-generic-function 'pnp_inlier_num-val :lambda-list '(m))
(cl:defmethod pnp_inlier_num-val ((m <LoopEdge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:pnp_inlier_num-val is deprecated.  Use swarm_msgs-msg:pnp_inlier_num instead.")
  (pnp_inlier_num m))

(cl:ensure-generic-function 'is_4dof-val :lambda-list '(m))
(cl:defmethod is_4dof-val ((m <LoopEdge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:is_4dof-val is deprecated.  Use swarm_msgs-msg:is_4dof instead.")
  (is_4dof m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <LoopEdge>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swarm_msgs-msg:id-val is deprecated.  Use swarm_msgs-msg:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoopEdge>) ostream)
  "Serializes a message object of type '<LoopEdge>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'ts_a)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'ts_a) (cl:floor (cl:slot-value msg 'ts_a)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'ts_b)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'ts_b) (cl:floor (cl:slot-value msg 'ts_b)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'drone_id_a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'drone_id_a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'drone_id_a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'drone_id_a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'drone_id_a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'drone_id_a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'drone_id_a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'drone_id_a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'drone_id_b)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'drone_id_b)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'drone_id_b)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'drone_id_b)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'drone_id_b)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'drone_id_b)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'drone_id_b)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'drone_id_b)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'keyframe_id_a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'keyframe_id_a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'keyframe_id_a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'keyframe_id_a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'keyframe_id_a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'keyframe_id_a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'keyframe_id_a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'keyframe_id_a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'keyframe_id_b)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'keyframe_id_b)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'keyframe_id_b)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'keyframe_id_b)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'keyframe_id_b)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'keyframe_id_b)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'keyframe_id_b)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'keyframe_id_b)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relative_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'self_pose_a) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'self_pose_b) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pos_cov) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ang_cov) ostream)
  (cl:let* ((signed (cl:slot-value msg 'pnp_inlier_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_4dof) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoopEdge>) istream)
  "Deserializes a message object of type '<LoopEdge>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ts_a) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ts_b) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'drone_id_a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'drone_id_a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'drone_id_a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'drone_id_a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'drone_id_a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'drone_id_a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'drone_id_a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'drone_id_a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'drone_id_b)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'drone_id_b)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'drone_id_b)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'drone_id_b)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'drone_id_b)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'drone_id_b)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'drone_id_b)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'drone_id_b)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'keyframe_id_a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'keyframe_id_a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'keyframe_id_a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'keyframe_id_a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'keyframe_id_a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'keyframe_id_a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'keyframe_id_a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'keyframe_id_a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'keyframe_id_b)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'keyframe_id_b)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'keyframe_id_b)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'keyframe_id_b)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'keyframe_id_b)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'keyframe_id_b)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'keyframe_id_b)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'keyframe_id_b)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relative_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'self_pose_a) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'self_pose_b) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pos_cov) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ang_cov) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pnp_inlier_num) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'is_4dof) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoopEdge>)))
  "Returns string type for a message object of type '<LoopEdge>"
  "swarm_msgs/LoopEdge")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoopEdge)))
  "Returns string type for a message object of type 'LoopEdge"
  "swarm_msgs/LoopEdge")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoopEdge>)))
  "Returns md5sum for a message object of type '<LoopEdge>"
  "ad50fe35eb11e19dfe778de2e9e9026b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoopEdge)))
  "Returns md5sum for a message object of type 'LoopEdge"
  "ad50fe35eb11e19dfe778de2e9e9026b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoopEdge>)))
  "Returns full string definition for message of type '<LoopEdge>"
  (cl:format cl:nil "time ts_a~%time ts_b~%uint64 drone_id_a~%uint64 drone_id_b~%uint64 keyframe_id_a~%uint64 keyframe_id_b~%geometry_msgs/Pose relative_pose~%~%geometry_msgs/Pose self_pose_a~%geometry_msgs/Pose self_pose_b~%~%geometry_msgs/Point pos_cov~%geometry_msgs/Point ang_cov~%~%#Details for loop~%int32 pnp_inlier_num~%bool is_4dof~%uint64 id~%~%#geometry_msgs/Point[] point_cloud_b~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoopEdge)))
  "Returns full string definition for message of type 'LoopEdge"
  (cl:format cl:nil "time ts_a~%time ts_b~%uint64 drone_id_a~%uint64 drone_id_b~%uint64 keyframe_id_a~%uint64 keyframe_id_b~%geometry_msgs/Pose relative_pose~%~%geometry_msgs/Pose self_pose_a~%geometry_msgs/Pose self_pose_b~%~%geometry_msgs/Point pos_cov~%geometry_msgs/Point ang_cov~%~%#Details for loop~%int32 pnp_inlier_num~%bool is_4dof~%uint64 id~%~%#geometry_msgs/Point[] point_cloud_b~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoopEdge>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relative_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'self_pose_a))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'self_pose_b))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pos_cov))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ang_cov))
     4
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoopEdge>))
  "Converts a ROS message object to a list"
  (cl:list 'LoopEdge
    (cl:cons ':ts_a (ts_a msg))
    (cl:cons ':ts_b (ts_b msg))
    (cl:cons ':drone_id_a (drone_id_a msg))
    (cl:cons ':drone_id_b (drone_id_b msg))
    (cl:cons ':keyframe_id_a (keyframe_id_a msg))
    (cl:cons ':keyframe_id_b (keyframe_id_b msg))
    (cl:cons ':relative_pose (relative_pose msg))
    (cl:cons ':self_pose_a (self_pose_a msg))
    (cl:cons ':self_pose_b (self_pose_b msg))
    (cl:cons ':pos_cov (pos_cov msg))
    (cl:cons ':ang_cov (ang_cov msg))
    (cl:cons ':pnp_inlier_num (pnp_inlier_num msg))
    (cl:cons ':is_4dof (is_4dof msg))
    (cl:cons ':id (id msg))
))
