;; Auto-generated. Do not edit!


(when (boundp 'swarm_msgs::ImageDescriptor)
  (if (not (find-package "SWARM_MSGS"))
    (make-package "SWARM_MSGS"))
  (shadow 'ImageDescriptor (find-package "SWARM_MSGS")))
(unless (find-package "SWARM_MSGS::IMAGEDESCRIPTOR")
  (make-package "SWARM_MSGS::IMAGEDESCRIPTOR"))

(in-package "ROS")
;;//! \htmlinclude ImageDescriptor.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass swarm_msgs::ImageDescriptor
  :super ros::object
  :slots (_header _drone_id _feature_descriptor _pose_drone _camera_extrinsic _image_desc _image_width _image_height _image _landmarks_2d_norm _landmarks_2d _landmarks_3d _landmarks_flag _prevent_adding_db _direction ))

(defmethod swarm_msgs::ImageDescriptor
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:drone_id __drone_id) 0)
    ((:feature_descriptor __feature_descriptor) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pose_drone __pose_drone) (instance geometry_msgs::Pose :init))
    ((:camera_extrinsic __camera_extrinsic) (instance geometry_msgs::Pose :init))
    ((:image_desc __image_desc) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:image_width __image_width) 0)
    ((:image_height __image_height) 0)
    ((:image __image) (make-array 0 :initial-element 0 :element-type :char))
    ((:landmarks_2d_norm __landmarks_2d_norm) ())
    ((:landmarks_2d __landmarks_2d) ())
    ((:landmarks_3d __landmarks_3d) ())
    ((:landmarks_flag __landmarks_flag) (make-array 0 :initial-element 0 :element-type :char))
    ((:prevent_adding_db __prevent_adding_db) nil)
    ((:direction __direction) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _drone_id (round __drone_id))
   (setq _feature_descriptor __feature_descriptor)
   (setq _pose_drone __pose_drone)
   (setq _camera_extrinsic __camera_extrinsic)
   (setq _image_desc __image_desc)
   (setq _image_width (round __image_width))
   (setq _image_height (round __image_height))
   (setq _image __image)
   (setq _landmarks_2d_norm __landmarks_2d_norm)
   (setq _landmarks_2d __landmarks_2d)
   (setq _landmarks_3d __landmarks_3d)
   (setq _landmarks_flag __landmarks_flag)
   (setq _prevent_adding_db __prevent_adding_db)
   (setq _direction (round __direction))
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
  (:feature_descriptor
   (&optional __feature_descriptor)
   (if __feature_descriptor (setq _feature_descriptor __feature_descriptor)) _feature_descriptor)
  (:pose_drone
   (&rest __pose_drone)
   (if (keywordp (car __pose_drone))
       (send* _pose_drone __pose_drone)
     (progn
       (if __pose_drone (setq _pose_drone (car __pose_drone)))
       _pose_drone)))
  (:camera_extrinsic
   (&rest __camera_extrinsic)
   (if (keywordp (car __camera_extrinsic))
       (send* _camera_extrinsic __camera_extrinsic)
     (progn
       (if __camera_extrinsic (setq _camera_extrinsic (car __camera_extrinsic)))
       _camera_extrinsic)))
  (:image_desc
   (&optional __image_desc)
   (if __image_desc (setq _image_desc __image_desc)) _image_desc)
  (:image_width
   (&optional __image_width)
   (if __image_width (setq _image_width __image_width)) _image_width)
  (:image_height
   (&optional __image_height)
   (if __image_height (setq _image_height __image_height)) _image_height)
  (:image
   (&optional __image)
   (if __image (setq _image __image)) _image)
  (:landmarks_2d_norm
   (&rest __landmarks_2d_norm)
   (if (keywordp (car __landmarks_2d_norm))
       (send* _landmarks_2d_norm __landmarks_2d_norm)
     (progn
       (if __landmarks_2d_norm (setq _landmarks_2d_norm (car __landmarks_2d_norm)))
       _landmarks_2d_norm)))
  (:landmarks_2d
   (&rest __landmarks_2d)
   (if (keywordp (car __landmarks_2d))
       (send* _landmarks_2d __landmarks_2d)
     (progn
       (if __landmarks_2d (setq _landmarks_2d (car __landmarks_2d)))
       _landmarks_2d)))
  (:landmarks_3d
   (&rest __landmarks_3d)
   (if (keywordp (car __landmarks_3d))
       (send* _landmarks_3d __landmarks_3d)
     (progn
       (if __landmarks_3d (setq _landmarks_3d (car __landmarks_3d)))
       _landmarks_3d)))
  (:landmarks_flag
   (&optional __landmarks_flag)
   (if __landmarks_flag (setq _landmarks_flag __landmarks_flag)) _landmarks_flag)
  (:prevent_adding_db
   (&optional (__prevent_adding_db :null))
   (if (not (eq __prevent_adding_db :null)) (setq _prevent_adding_db __prevent_adding_db)) _prevent_adding_db)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _drone_id
    4
    ;; float32[] _feature_descriptor
    (* 4    (length _feature_descriptor)) 4
    ;; geometry_msgs/Pose _pose_drone
    (send _pose_drone :serialization-length)
    ;; geometry_msgs/Pose _camera_extrinsic
    (send _camera_extrinsic :serialization-length)
    ;; float32[] _image_desc
    (* 4    (length _image_desc)) 4
    ;; int32 _image_width
    4
    ;; int32 _image_height
    4
    ;; uint8[] _image
    (* 1    (length _image)) 4
    ;; geometry_msgs/Point32[] _landmarks_2d_norm
    (apply #'+ (send-all _landmarks_2d_norm :serialization-length)) 4
    ;; geometry_msgs/Point32[] _landmarks_2d
    (apply #'+ (send-all _landmarks_2d :serialization-length)) 4
    ;; geometry_msgs/Point32[] _landmarks_3d
    (apply #'+ (send-all _landmarks_3d :serialization-length)) 4
    ;; uint8[] _landmarks_flag
    (* 1    (length _landmarks_flag)) 4
    ;; bool _prevent_adding_db
    1
    ;; int32 _direction
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _drone_id
       (write-long _drone_id s)
     ;; float32[] _feature_descriptor
     (write-long (length _feature_descriptor) s)
     (dotimes (i (length _feature_descriptor))
       (sys::poke (elt _feature_descriptor i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; geometry_msgs/Pose _pose_drone
       (send _pose_drone :serialize s)
     ;; geometry_msgs/Pose _camera_extrinsic
       (send _camera_extrinsic :serialize s)
     ;; float32[] _image_desc
     (write-long (length _image_desc) s)
     (dotimes (i (length _image_desc))
       (sys::poke (elt _image_desc i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int32 _image_width
       (write-long _image_width s)
     ;; int32 _image_height
       (write-long _image_height s)
     ;; uint8[] _image
     (write-long (length _image) s)
     (princ _image s)
     ;; geometry_msgs/Point32[] _landmarks_2d_norm
     (write-long (length _landmarks_2d_norm) s)
     (dolist (elem _landmarks_2d_norm)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point32[] _landmarks_2d
     (write-long (length _landmarks_2d) s)
     (dolist (elem _landmarks_2d)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point32[] _landmarks_3d
     (write-long (length _landmarks_3d) s)
     (dolist (elem _landmarks_3d)
       (send elem :serialize s)
       )
     ;; uint8[] _landmarks_flag
     (write-long (length _landmarks_flag) s)
     (princ _landmarks_flag s)
     ;; bool _prevent_adding_db
       (if _prevent_adding_db (write-byte -1 s) (write-byte 0 s))
     ;; int32 _direction
       (write-long _direction s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _drone_id
     (setq _drone_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _feature_descriptor
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _feature_descriptor (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _feature_descriptor i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; geometry_msgs/Pose _pose_drone
     (send _pose_drone :deserialize buf ptr-) (incf ptr- (send _pose_drone :serialization-length))
   ;; geometry_msgs/Pose _camera_extrinsic
     (send _camera_extrinsic :deserialize buf ptr-) (incf ptr- (send _camera_extrinsic :serialization-length))
   ;; float32[] _image_desc
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _image_desc (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _image_desc i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int32 _image_width
     (setq _image_width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _image_height
     (setq _image_height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8[] _image
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _image (make-array n :element-type :char))
     (replace _image buf :start2 ptr-) (incf ptr- n))
   ;; geometry_msgs/Point32[] _landmarks_2d_norm
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _landmarks_2d_norm (let (r) (dotimes (i n) (push (instance geometry_msgs::Point32 :init) r)) r))
     (dolist (elem- _landmarks_2d_norm)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point32[] _landmarks_2d
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _landmarks_2d (let (r) (dotimes (i n) (push (instance geometry_msgs::Point32 :init) r)) r))
     (dolist (elem- _landmarks_2d)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point32[] _landmarks_3d
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _landmarks_3d (let (r) (dotimes (i n) (push (instance geometry_msgs::Point32 :init) r)) r))
     (dolist (elem- _landmarks_3d)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint8[] _landmarks_flag
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _landmarks_flag (make-array n :element-type :char))
     (replace _landmarks_flag buf :start2 ptr-) (incf ptr- n))
   ;; bool _prevent_adding_db
     (setq _prevent_adding_db (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _direction
     (setq _direction (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get swarm_msgs::ImageDescriptor :md5sum-) "4f5e8e454632afe4a9ed9bcee95f3cff")
(setf (get swarm_msgs::ImageDescriptor :datatype-) "swarm_msgs/ImageDescriptor")
(setf (get swarm_msgs::ImageDescriptor :definition-)
      "Header header
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



(provide :swarm_msgs/ImageDescriptor "4f5e8e454632afe4a9ed9bcee95f3cff")


