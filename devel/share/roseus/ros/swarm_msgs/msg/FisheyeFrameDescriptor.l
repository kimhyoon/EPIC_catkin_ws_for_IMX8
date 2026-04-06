;; Auto-generated. Do not edit!


(when (boundp 'swarm_msgs::FisheyeFrameDescriptor)
  (if (not (find-package "SWARM_MSGS"))
    (make-package "SWARM_MSGS"))
  (shadow 'FisheyeFrameDescriptor (find-package "SWARM_MSGS")))
(unless (find-package "SWARM_MSGS::FISHEYEFRAMEDESCRIPTOR")
  (make-package "SWARM_MSGS::FISHEYEFRAMEDESCRIPTOR"))

(in-package "ROS")
;;//! \htmlinclude FisheyeFrameDescriptor.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass swarm_msgs::FisheyeFrameDescriptor
  :super ros::object
  :slots (_header _prevent_adding_db _landmark_num _drone_id _msg_id _pose_drone _images ))

(defmethod swarm_msgs::FisheyeFrameDescriptor
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:prevent_adding_db __prevent_adding_db) nil)
    ((:landmark_num __landmark_num) 0)
    ((:drone_id __drone_id) 0)
    ((:msg_id __msg_id) 0)
    ((:pose_drone __pose_drone) (instance geometry_msgs::Pose :init))
    ((:images __images) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _prevent_adding_db __prevent_adding_db)
   (setq _landmark_num (round __landmark_num))
   (setq _drone_id (round __drone_id))
   (setq _msg_id (round __msg_id))
   (setq _pose_drone __pose_drone)
   (setq _images __images)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:prevent_adding_db
   (&optional (__prevent_adding_db :null))
   (if (not (eq __prevent_adding_db :null)) (setq _prevent_adding_db __prevent_adding_db)) _prevent_adding_db)
  (:landmark_num
   (&optional __landmark_num)
   (if __landmark_num (setq _landmark_num __landmark_num)) _landmark_num)
  (:drone_id
   (&optional __drone_id)
   (if __drone_id (setq _drone_id __drone_id)) _drone_id)
  (:msg_id
   (&optional __msg_id)
   (if __msg_id (setq _msg_id __msg_id)) _msg_id)
  (:pose_drone
   (&rest __pose_drone)
   (if (keywordp (car __pose_drone))
       (send* _pose_drone __pose_drone)
     (progn
       (if __pose_drone (setq _pose_drone (car __pose_drone)))
       _pose_drone)))
  (:images
   (&rest __images)
   (if (keywordp (car __images))
       (send* _images __images)
     (progn
       (if __images (setq _images (car __images)))
       _images)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _prevent_adding_db
    1
    ;; int32 _landmark_num
    4
    ;; int32 _drone_id
    4
    ;; int64 _msg_id
    8
    ;; geometry_msgs/Pose _pose_drone
    (send _pose_drone :serialization-length)
    ;; swarm_msgs/ImageDescriptor[] _images
    (apply #'+ (send-all _images :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _prevent_adding_db
       (if _prevent_adding_db (write-byte -1 s) (write-byte 0 s))
     ;; int32 _landmark_num
       (write-long _landmark_num s)
     ;; int32 _drone_id
       (write-long _drone_id s)
     ;; int64 _msg_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _msg_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _msg_id) (= (length (_msg_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_msg_id . bv) 0) 0) s)
              (write-long (ash (elt (_msg_id . bv) 1) -1) s))
             ((and (class _msg_id) (= (length (_msg_id . bv)) 1)) ;; big1
              (write-long (elt (_msg_id . bv) 0) s)
              (write-long (if (>= _msg_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _msg_id s)(write-long (if (>= _msg_id 0) 0 #xffffffff) s)))
     ;; geometry_msgs/Pose _pose_drone
       (send _pose_drone :serialize s)
     ;; swarm_msgs/ImageDescriptor[] _images
     (write-long (length _images) s)
     (dolist (elem _images)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _prevent_adding_db
     (setq _prevent_adding_db (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _landmark_num
     (setq _landmark_num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _drone_id
     (setq _drone_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int64 _msg_id
#+(or :alpha :irix6 :x86_64)
      (setf _msg_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _msg_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; geometry_msgs/Pose _pose_drone
     (send _pose_drone :deserialize buf ptr-) (incf ptr- (send _pose_drone :serialization-length))
   ;; swarm_msgs/ImageDescriptor[] _images
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _images (let (r) (dotimes (i n) (push (instance swarm_msgs::ImageDescriptor :init) r)) r))
     (dolist (elem- _images)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get swarm_msgs::FisheyeFrameDescriptor :md5sum-) "06020b9f79d2ac92cae2a950ef662e84")
(setf (get swarm_msgs::FisheyeFrameDescriptor :datatype-) "swarm_msgs/FisheyeFrameDescriptor")
(setf (get swarm_msgs::FisheyeFrameDescriptor :definition-)
      "Header header
bool prevent_adding_db
int32 landmark_num
int32 drone_id
int64 msg_id
geometry_msgs/Pose pose_drone
ImageDescriptor[] images

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

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
MSG: swarm_msgs/ImageDescriptor
Header header
int32 drone_id

float32[] feature_descriptor

geometry_msgs/Pose pose_drone
geometry_msgs/Pose camera_extrinsic

float32[] image_desc
int32 image_width
int32 image_height
uint8[] image

geometry_msgs/Point32[] landmarks_2d_norm
geometry_msgs/Point32[] landmarks_2d
geometry_msgs/Point32[] landmarks_3d
uint8[] landmarks_flag
bool prevent_adding_db

int32 direction
================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
")



(provide :swarm_msgs/FisheyeFrameDescriptor "06020b9f79d2ac92cae2a950ef662e84")


