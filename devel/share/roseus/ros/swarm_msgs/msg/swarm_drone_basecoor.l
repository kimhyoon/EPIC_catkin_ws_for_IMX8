;; Auto-generated. Do not edit!


(when (boundp 'swarm_msgs::swarm_drone_basecoor)
  (if (not (find-package "SWARM_MSGS"))
    (make-package "SWARM_MSGS"))
  (shadow 'swarm_drone_basecoor (find-package "SWARM_MSGS")))
(unless (find-package "SWARM_MSGS::SWARM_DRONE_BASECOOR")
  (make-package "SWARM_MSGS::SWARM_DRONE_BASECOOR"))

(in-package "ROS")
;;//! \htmlinclude swarm_drone_basecoor.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass swarm_msgs::swarm_drone_basecoor
  :super ros::object
  :slots (_header _ids _drone_basecoor _drone_baseyaw _position_cov _yaw_cov _self_id ))

(defmethod swarm_msgs::swarm_drone_basecoor
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ids __ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:drone_basecoor __drone_basecoor) ())
    ((:drone_baseyaw __drone_baseyaw) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:position_cov __position_cov) ())
    ((:yaw_cov __yaw_cov) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:self_id __self_id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _ids __ids)
   (setq _drone_basecoor __drone_basecoor)
   (setq _drone_baseyaw __drone_baseyaw)
   (setq _position_cov __position_cov)
   (setq _yaw_cov __yaw_cov)
   (setq _self_id (round __self_id))
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
  (:drone_basecoor
   (&rest __drone_basecoor)
   (if (keywordp (car __drone_basecoor))
       (send* _drone_basecoor __drone_basecoor)
     (progn
       (if __drone_basecoor (setq _drone_basecoor (car __drone_basecoor)))
       _drone_basecoor)))
  (:drone_baseyaw
   (&optional __drone_baseyaw)
   (if __drone_baseyaw (setq _drone_baseyaw __drone_baseyaw)) _drone_baseyaw)
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
  (:self_id
   (&optional __self_id)
   (if __self_id (setq _self_id __self_id)) _self_id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32[] _ids
    (* 4    (length _ids)) 4
    ;; geometry_msgs/Point[] _drone_basecoor
    (apply #'+ (send-all _drone_basecoor :serialization-length)) 4
    ;; float64[] _drone_baseyaw
    (* 8    (length _drone_baseyaw)) 4
    ;; geometry_msgs/Vector3[] _position_cov
    (apply #'+ (send-all _position_cov :serialization-length)) 4
    ;; float64[] _yaw_cov
    (* 8    (length _yaw_cov)) 4
    ;; uint32 _self_id
    4
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
     ;; geometry_msgs/Point[] _drone_basecoor
     (write-long (length _drone_basecoor) s)
     (dolist (elem _drone_basecoor)
       (send elem :serialize s)
       )
     ;; float64[] _drone_baseyaw
     (write-long (length _drone_baseyaw) s)
     (dotimes (i (length _drone_baseyaw))
       (sys::poke (elt _drone_baseyaw i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
     ;; uint32 _self_id
       (write-long _self_id s)
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
   ;; geometry_msgs/Point[] _drone_basecoor
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _drone_basecoor (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _drone_basecoor)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64[] _drone_baseyaw
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _drone_baseyaw (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _drone_baseyaw i) (sys::peek buf ptr- :double)) (incf ptr- 8)
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
   ;; uint32 _self_id
     (setq _self_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get swarm_msgs::swarm_drone_basecoor :md5sum-) "e6b9ba938857aabbb8150d46c1be97be")
(setf (get swarm_msgs::swarm_drone_basecoor :datatype-) "swarm_msgs/swarm_drone_basecoor")
(setf (get swarm_msgs::swarm_drone_basecoor :definition-)
      "std_msgs/Header header
uint32[] ids
geometry_msgs/Point[] drone_basecoor
#Only yaw transformed
float64[] drone_baseyaw
geometry_msgs/Vector3[] position_cov
float64[] yaw_cov
uint32 self_id

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
")



(provide :swarm_msgs/swarm_drone_basecoor "e6b9ba938857aabbb8150d46c1be97be")


