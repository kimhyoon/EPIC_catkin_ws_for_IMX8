;; Auto-generated. Do not edit!


(when (boundp 'swarm_msgs::swarm_drone_source_data)
  (if (not (find-package "SWARM_MSGS"))
    (make-package "SWARM_MSGS"))
  (shadow 'swarm_drone_source_data (find-package "SWARM_MSGS")))
(unless (find-package "SWARM_MSGS::SWARM_DRONE_SOURCE_DATA")
  (make-package "SWARM_MSGS::SWARM_DRONE_SOURCE_DATA"))

(in-package "ROS")
;;//! \htmlinclude swarm_drone_source_data.msg.html
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass swarm_msgs::swarm_drone_source_data
  :super ros::object
  :slots (_header _drone_num _self_id _drone_self_odoms _ids _active _distance_matrix _distance_time _self_frame_id ))

(defmethod swarm_msgs::swarm_drone_source_data
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:drone_num __drone_num) 0)
    ((:self_id __self_id) 0)
    ((:drone_self_odoms __drone_self_odoms) ())
    ((:ids __ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:active __active) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:distance_matrix __distance_matrix) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:distance_time __distance_time) (make-array 0 :initial-element 0 :element-type :integer))
    ((:self_frame_id __self_frame_id) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _drone_num (round __drone_num))
   (setq _self_id (round __self_id))
   (setq _drone_self_odoms __drone_self_odoms)
   (setq _ids __ids)
   (setq _active __active)
   (setq _distance_matrix __distance_matrix)
   (setq _distance_time __distance_time)
   (setq _self_frame_id (string __self_frame_id))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:drone_num
   (&optional __drone_num)
   (if __drone_num (setq _drone_num __drone_num)) _drone_num)
  (:self_id
   (&optional __self_id)
   (if __self_id (setq _self_id __self_id)) _self_id)
  (:drone_self_odoms
   (&rest __drone_self_odoms)
   (if (keywordp (car __drone_self_odoms))
       (send* _drone_self_odoms __drone_self_odoms)
     (progn
       (if __drone_self_odoms (setq _drone_self_odoms (car __drone_self_odoms)))
       _drone_self_odoms)))
  (:ids
   (&optional __ids)
   (if __ids (setq _ids __ids)) _ids)
  (:active
   (&optional __active)
   (if __active (setq _active __active)) _active)
  (:distance_matrix
   (&optional __distance_matrix)
   (if __distance_matrix (setq _distance_matrix __distance_matrix)) _distance_matrix)
  (:distance_time
   (&optional __distance_time)
   (if __distance_time (setq _distance_time __distance_time)) _distance_time)
  (:self_frame_id
   (&optional __self_frame_id)
   (if __self_frame_id (setq _self_frame_id __self_frame_id)) _self_frame_id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _drone_num
    4
    ;; uint32 _self_id
    4
    ;; nav_msgs/Odometry[] _drone_self_odoms
    (apply #'+ (send-all _drone_self_odoms :serialization-length)) 4
    ;; uint32[] _ids
    (* 4    (length _ids)) 4
    ;; bool[] _active
    (* 1    (length _active)) 4
    ;; float32[] _distance_matrix
    (* 4    (length _distance_matrix)) 4
    ;; uint32[] _distance_time
    (* 4    (length _distance_time)) 4
    ;; string _self_frame_id
    4 (length _self_frame_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _drone_num
       (write-long _drone_num s)
     ;; uint32 _self_id
       (write-long _self_id s)
     ;; nav_msgs/Odometry[] _drone_self_odoms
     (write-long (length _drone_self_odoms) s)
     (dolist (elem _drone_self_odoms)
       (send elem :serialize s)
       )
     ;; uint32[] _ids
     (write-long (length _ids) s)
     (dotimes (i (length _ids))
       (write-long (elt _ids i) s)
       )
     ;; bool[] _active
     (write-long (length _active) s)
     (dotimes (i (length _active))
       (if (elt _active i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; float32[] _distance_matrix
     (write-long (length _distance_matrix) s)
     (dotimes (i (length _distance_matrix))
       (sys::poke (elt _distance_matrix i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; uint32[] _distance_time
     (write-long (length _distance_time) s)
     (dotimes (i (length _distance_time))
       (write-long (elt _distance_time i) s)
       )
     ;; string _self_frame_id
       (write-long (length _self_frame_id) s) (princ _self_frame_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _drone_num
     (setq _drone_num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _self_id
     (setq _self_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; nav_msgs/Odometry[] _drone_self_odoms
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _drone_self_odoms (let (r) (dotimes (i n) (push (instance nav_msgs::Odometry :init) r)) r))
     (dolist (elem- _drone_self_odoms)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint32[] _ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; bool[] _active
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _active (make-list n))
     (dotimes (i n)
     (setf (elt _active i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; float32[] _distance_matrix
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _distance_matrix (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _distance_matrix i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; uint32[] _distance_time
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _distance_time (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _distance_time i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; string _self_frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _self_frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get swarm_msgs::swarm_drone_source_data :md5sum-) "ed292949bcc7aff7a6c1948c5595d627")
(setf (get swarm_msgs::swarm_drone_source_data :datatype-) "swarm_msgs/swarm_drone_source_data")
(setf (get swarm_msgs::swarm_drone_source_data :definition-)
      "Header header
int32 drone_num
uint32 self_id
nav_msgs/Odometry[] drone_self_odoms
uint32[] ids
bool[] active
float32[] distance_matrix
uint32[] distance_time
string self_frame_id
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
MSG: nav_msgs/Odometry
# This represents an estimate of a position and velocity in free space.  
# The pose in this message should be specified in the coordinate frame given by header.frame_id.
# The twist in this message should be specified in the coordinate frame given by the child_frame_id
Header header
string child_frame_id
geometry_msgs/PoseWithCovariance pose
geometry_msgs/TwistWithCovariance twist

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

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
MSG: geometry_msgs/TwistWithCovariance
# This expresses velocity in free space with uncertainty.

Twist twist

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

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
")



(provide :swarm_msgs/swarm_drone_source_data "ed292949bcc7aff7a6c1948c5595d627")


