;; Auto-generated. Do not edit!


(when (boundp 'swarm_msgs::node_frame)
  (if (not (find-package "SWARM_MSGS"))
    (make-package "SWARM_MSGS"))
  (shadow 'node_frame (find-package "SWARM_MSGS")))
(unless (find-package "SWARM_MSGS::NODE_FRAME")
  (make-package "SWARM_MSGS::NODE_FRAME"))

(in-package "ROS")
;;//! \htmlinclude node_frame.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass swarm_msgs::node_frame
  :super ros::object
  :slots (_header _drone_id _keyframe_id _position _velocity _yaw _pitch _roll _quat _vo_available _dismap_ids _dismap_dists _detected_xyzyaws _detected ))

(defmethod swarm_msgs::node_frame
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:drone_id __drone_id) 0)
    ((:keyframe_id __keyframe_id) 0)
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:velocity __velocity) (instance geometry_msgs::Point :init))
    ((:yaw __yaw) 0.0)
    ((:pitch __pitch) 0.0)
    ((:roll __roll) 0.0)
    ((:quat __quat) (instance geometry_msgs::Quaternion :init))
    ((:vo_available __vo_available) nil)
    ((:dismap_ids __dismap_ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:dismap_dists __dismap_dists) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:detected_xyzyaws __detected_xyzyaws) ())
    ((:detected __detected) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _drone_id (round __drone_id))
   (setq _keyframe_id (round __keyframe_id))
   (setq _position __position)
   (setq _velocity __velocity)
   (setq _yaw (float __yaw))
   (setq _pitch (float __pitch))
   (setq _roll (float __roll))
   (setq _quat __quat)
   (setq _vo_available __vo_available)
   (setq _dismap_ids __dismap_ids)
   (setq _dismap_dists __dismap_dists)
   (setq _detected_xyzyaws __detected_xyzyaws)
   (setq _detected __detected)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:drone_id
   (&optional __drone_id)
   (if __drone_id (setq _drone_id __drone_id)) _drone_id)
  (:keyframe_id
   (&optional __keyframe_id)
   (if __keyframe_id (setq _keyframe_id __keyframe_id)) _keyframe_id)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:quat
   (&rest __quat)
   (if (keywordp (car __quat))
       (send* _quat __quat)
     (progn
       (if __quat (setq _quat (car __quat)))
       _quat)))
  (:vo_available
   (&optional (__vo_available :null))
   (if (not (eq __vo_available :null)) (setq _vo_available __vo_available)) _vo_available)
  (:dismap_ids
   (&optional __dismap_ids)
   (if __dismap_ids (setq _dismap_ids __dismap_ids)) _dismap_ids)
  (:dismap_dists
   (&optional __dismap_dists)
   (if __dismap_dists (setq _dismap_dists __dismap_dists)) _dismap_dists)
  (:detected_xyzyaws
   (&rest __detected_xyzyaws)
   (if (keywordp (car __detected_xyzyaws))
       (send* _detected_xyzyaws __detected_xyzyaws)
     (progn
       (if __detected_xyzyaws (setq _detected_xyzyaws (car __detected_xyzyaws)))
       _detected_xyzyaws)))
  (:detected
   (&rest __detected)
   (if (keywordp (car __detected))
       (send* _detected __detected)
     (progn
       (if __detected (setq _detected (car __detected)))
       _detected)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _drone_id
    4
    ;; uint64 _keyframe_id
    8
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; geometry_msgs/Point _velocity
    (send _velocity :serialization-length)
    ;; float32 _yaw
    4
    ;; float32 _pitch
    4
    ;; float32 _roll
    4
    ;; geometry_msgs/Quaternion _quat
    (send _quat :serialization-length)
    ;; bool _vo_available
    1
    ;; int32[] _dismap_ids
    (* 4    (length _dismap_ids)) 4
    ;; float64[] _dismap_dists
    (* 8    (length _dismap_dists)) 4
    ;; swarm_msgs/node_detected_xyzyaw[] _detected_xyzyaws
    (apply #'+ (send-all _detected_xyzyaws :serialization-length)) 4
    ;; swarm_msgs/node_detected[] _detected
    (apply #'+ (send-all _detected :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _drone_id
       (write-long _drone_id s)
     ;; uint64 _keyframe_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _keyframe_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _keyframe_id) (= (length (_keyframe_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_keyframe_id . bv) 0) 0) s)
              (write-long (ash (elt (_keyframe_id . bv) 1) -1) s))
             ((and (class _keyframe_id) (= (length (_keyframe_id . bv)) 1)) ;; big1
              (write-long (elt (_keyframe_id . bv) 0) s)
              (write-long (if (>= _keyframe_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _keyframe_id s)(write-long (if (>= _keyframe_id 0) 0 #xffffffff) s)))
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; geometry_msgs/Point _velocity
       (send _velocity :serialize s)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Quaternion _quat
       (send _quat :serialize s)
     ;; bool _vo_available
       (if _vo_available (write-byte -1 s) (write-byte 0 s))
     ;; int32[] _dismap_ids
     (write-long (length _dismap_ids) s)
     (dotimes (i (length _dismap_ids))
       (write-long (elt _dismap_ids i) s)
       )
     ;; float64[] _dismap_dists
     (write-long (length _dismap_dists) s)
     (dotimes (i (length _dismap_dists))
       (sys::poke (elt _dismap_dists i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; swarm_msgs/node_detected_xyzyaw[] _detected_xyzyaws
     (write-long (length _detected_xyzyaws) s)
     (dolist (elem _detected_xyzyaws)
       (send elem :serialize s)
       )
     ;; swarm_msgs/node_detected[] _detected
     (write-long (length _detected) s)
     (dolist (elem _detected)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _drone_id
     (setq _drone_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint64 _keyframe_id
     
#+(or :alpha :irix6 :x86_64)
      (setf _keyframe_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _keyframe_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; geometry_msgs/Point _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pitch
     (setq _pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _roll
     (setq _roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Quaternion _quat
     (send _quat :deserialize buf ptr-) (incf ptr- (send _quat :serialization-length))
   ;; bool _vo_available
     (setq _vo_available (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32[] _dismap_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dismap_ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _dismap_ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float64[] _dismap_dists
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dismap_dists (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _dismap_dists i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; swarm_msgs/node_detected_xyzyaw[] _detected_xyzyaws
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _detected_xyzyaws (let (r) (dotimes (i n) (push (instance swarm_msgs::node_detected_xyzyaw :init) r)) r))
     (dolist (elem- _detected_xyzyaws)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; swarm_msgs/node_detected[] _detected
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _detected (let (r) (dotimes (i n) (push (instance swarm_msgs::node_detected :init) r)) r))
     (dolist (elem- _detected)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get swarm_msgs::node_frame :md5sum-) "8804cccece15c26162c55054a22f87c8")
(setf (get swarm_msgs::node_frame :datatype-) "swarm_msgs/node_frame")
(setf (get swarm_msgs::node_frame :definition-)
      "Header header
int32 drone_id #This is drone ID!!!
uint64 keyframe_id

geometry_msgs/Point position
geometry_msgs/Point velocity
float32 yaw
float32 pitch
float32 roll
geometry_msgs/Quaternion quat

bool vo_available
int32[] dismap_ids
float64[] dismap_dists
node_detected_xyzyaw[] detected_xyzyaws
node_detected[] detected
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
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

================================================================================
MSG: swarm_msgs/node_detected_xyzyaw
Header header
int64 id
int32 self_drone_id
int32 remote_drone_id
geometry_msgs/Point dpos
geometry_msgs/Point dpos_std

float64 dyaw
float64 dyaw_cov
bool enable_scale
bool is_yaw_valid
float64 probaility
float64 inv_dep

geometry_msgs/Pose local_pose_self #Here is camera pose, not IMU pose.
geometry_msgs/Pose local_pose_remote

geometry_msgs/Pose camera_extrinsic
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: swarm_msgs/node_detected
Header header
int64 id
int32 self_drone_id
int32 remote_drone_id
geometry_msgs/PoseWithCovariance relative_pose #If 2d detect, gives x=1
bool is_2d_detect
bool is_yaw_valid
float64 probaility
geometry_msgs/Pose local_pose_self
geometry_msgs/Pose local_pose_remote
bool dof_4
================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

")



(provide :swarm_msgs/node_frame "8804cccece15c26162c55054a22f87c8")


