;; Auto-generated. Do not edit!


(when (boundp 'swarm_msgs::swarm_fused)
  (if (not (find-package "SWARM_MSGS"))
    (make-package "SWARM_MSGS"))
  (shadow 'swarm_fused (find-package "SWARM_MSGS")))
(unless (find-package "SWARM_MSGS::SWARM_FUSED")
  (make-package "SWARM_MSGS::SWARM_FUSED"))

(in-package "ROS")
;;//! \htmlinclude swarm_fused.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass swarm_msgs::swarm_fused
  :super ros::object
  :slots (_header _ids _local_drone_position _local_drone_velocity _local_drone_rotation _local_drone_yaw _position_cov _yaw_cov _self_pos _self_yaw ))

(defmethod swarm_msgs::swarm_fused
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ids __ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:local_drone_position __local_drone_position) ())
    ((:local_drone_velocity __local_drone_velocity) ())
    ((:local_drone_rotation __local_drone_rotation) ())
    ((:local_drone_yaw __local_drone_yaw) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:position_cov __position_cov) ())
    ((:yaw_cov __yaw_cov) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:self_pos __self_pos) (instance geometry_msgs::Point :init))
    ((:self_yaw __self_yaw) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _ids __ids)
   (setq _local_drone_position __local_drone_position)
   (setq _local_drone_velocity __local_drone_velocity)
   (setq _local_drone_rotation __local_drone_rotation)
   (setq _local_drone_yaw __local_drone_yaw)
   (setq _position_cov __position_cov)
   (setq _yaw_cov __yaw_cov)
   (setq _self_pos __self_pos)
   (setq _self_yaw (float __self_yaw))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ids
   (&optional __ids)
   (if __ids (setq _ids __ids)) _ids)
  (:local_drone_position
   (&rest __local_drone_position)
   (if (keywordp (car __local_drone_position))
       (send* _local_drone_position __local_drone_position)
     (progn
       (if __local_drone_position (setq _local_drone_position (car __local_drone_position)))
       _local_drone_position)))
  (:local_drone_velocity
   (&rest __local_drone_velocity)
   (if (keywordp (car __local_drone_velocity))
       (send* _local_drone_velocity __local_drone_velocity)
     (progn
       (if __local_drone_velocity (setq _local_drone_velocity (car __local_drone_velocity)))
       _local_drone_velocity)))
  (:local_drone_rotation
   (&rest __local_drone_rotation)
   (if (keywordp (car __local_drone_rotation))
       (send* _local_drone_rotation __local_drone_rotation)
     (progn
       (if __local_drone_rotation (setq _local_drone_rotation (car __local_drone_rotation)))
       _local_drone_rotation)))
  (:local_drone_yaw
   (&optional __local_drone_yaw)
   (if __local_drone_yaw (setq _local_drone_yaw __local_drone_yaw)) _local_drone_yaw)
  (:position_cov
   (&rest __position_cov)
   (if (keywordp (car __position_cov))
       (send* _position_cov __position_cov)
     (progn
       (if __position_cov (setq _position_cov (car __position_cov)))
       _position_cov)))
  (:yaw_cov
   (&optional __yaw_cov)
   (if __yaw_cov (setq _yaw_cov __yaw_cov)) _yaw_cov)
  (:self_pos
   (&rest __self_pos)
   (if (keywordp (car __self_pos))
       (send* _self_pos __self_pos)
     (progn
       (if __self_pos (setq _self_pos (car __self_pos)))
       _self_pos)))
  (:self_yaw
   (&optional __self_yaw)
   (if __self_yaw (setq _self_yaw __self_yaw)) _self_yaw)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32[] _ids
    (* 4    (length _ids)) 4
    ;; geometry_msgs/Point[] _local_drone_position
    (apply #'+ (send-all _local_drone_position :serialization-length)) 4
    ;; geometry_msgs/Vector3[] _local_drone_velocity
    (apply #'+ (send-all _local_drone_velocity :serialization-length)) 4
    ;; geometry_msgs/Quaternion[] _local_drone_rotation
    (apply #'+ (send-all _local_drone_rotation :serialization-length)) 4
    ;; float64[] _local_drone_yaw
    (* 8    (length _local_drone_yaw)) 4
    ;; geometry_msgs/Vector3[] _position_cov
    (apply #'+ (send-all _position_cov :serialization-length)) 4
    ;; float64[] _yaw_cov
    (* 8    (length _yaw_cov)) 4
    ;; geometry_msgs/Point _self_pos
    (send _self_pos :serialization-length)
    ;; float64 _self_yaw
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32[] _ids
     (write-long (length _ids) s)
     (dotimes (i (length _ids))
       (write-long (elt _ids i) s)
       )
     ;; geometry_msgs/Point[] _local_drone_position
     (write-long (length _local_drone_position) s)
     (dolist (elem _local_drone_position)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Vector3[] _local_drone_velocity
     (write-long (length _local_drone_velocity) s)
     (dolist (elem _local_drone_velocity)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Quaternion[] _local_drone_rotation
     (write-long (length _local_drone_rotation) s)
     (dolist (elem _local_drone_rotation)
       (send elem :serialize s)
       )
     ;; float64[] _local_drone_yaw
     (write-long (length _local_drone_yaw) s)
     (dotimes (i (length _local_drone_yaw))
       (sys::poke (elt _local_drone_yaw i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; geometry_msgs/Vector3[] _position_cov
     (write-long (length _position_cov) s)
     (dolist (elem _position_cov)
       (send elem :serialize s)
       )
     ;; float64[] _yaw_cov
     (write-long (length _yaw_cov) s)
     (dotimes (i (length _yaw_cov))
       (sys::poke (elt _yaw_cov i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; geometry_msgs/Point _self_pos
       (send _self_pos :serialize s)
     ;; float64 _self_yaw
       (sys::poke _self_yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32[] _ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; geometry_msgs/Point[] _local_drone_position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _local_drone_position (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _local_drone_position)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Vector3[] _local_drone_velocity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _local_drone_velocity (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _local_drone_velocity)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Quaternion[] _local_drone_rotation
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _local_drone_rotation (let (r) (dotimes (i n) (push (instance geometry_msgs::Quaternion :init) r)) r))
     (dolist (elem- _local_drone_rotation)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64[] _local_drone_yaw
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _local_drone_yaw (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _local_drone_yaw i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; geometry_msgs/Vector3[] _position_cov
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position_cov (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _position_cov)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64[] _yaw_cov
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _yaw_cov (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _yaw_cov i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; geometry_msgs/Point _self_pos
     (send _self_pos :deserialize buf ptr-) (incf ptr- (send _self_pos :serialization-length))
   ;; float64 _self_yaw
     (setq _self_yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get swarm_msgs::swarm_fused :md5sum-) "1646b08045dc72f79357e866b3d3d7b6")
(setf (get swarm_msgs::swarm_fused :datatype-) "swarm_msgs/swarm_fused")
(setf (get swarm_msgs::swarm_fused :definition-)
      "std_msgs/Header header
uint32[] ids
geometry_msgs/Point[] local_drone_position
geometry_msgs/Vector3[] local_drone_velocity
geometry_msgs/Quaternion[] local_drone_rotation
float64[] local_drone_yaw

geometry_msgs/Vector3[] position_cov
float64[] yaw_cov

geometry_msgs/Point self_pos
float64 self_yaw
# Local odom in self cooridnate
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



(provide :swarm_msgs/swarm_fused "1646b08045dc72f79357e866b3d3d7b6")


