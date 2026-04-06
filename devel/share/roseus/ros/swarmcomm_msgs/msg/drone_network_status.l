;; Auto-generated. Do not edit!


(when (boundp 'swarmcomm_msgs::drone_network_status)
  (if (not (find-package "SWARMCOMM_MSGS"))
    (make-package "SWARMCOMM_MSGS"))
  (shadow 'drone_network_status (find-package "SWARMCOMM_MSGS")))
(unless (find-package "SWARMCOMM_MSGS::DRONE_NETWORK_STATUS")
  (make-package "SWARMCOMM_MSGS::DRONE_NETWORK_STATUS"))

(in-package "ROS")
;;//! \htmlinclude drone_network_status.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass swarmcomm_msgs::drone_network_status
  :super ros::object
  :slots (_header _drone_id _active _quality _bandwidth _hops ))

(defmethod swarmcomm_msgs::drone_network_status
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:drone_id __drone_id) 0)
    ((:active __active) nil)
    ((:quality __quality) 0)
    ((:bandwidth __bandwidth) 0)
    ((:hops __hops) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _drone_id (round __drone_id))
   (setq _active __active)
   (setq _quality (round __quality))
   (setq _bandwidth (round __bandwidth))
   (setq _hops (round __hops))
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
  (:active
   (&optional (__active :null))
   (if (not (eq __active :null)) (setq _active __active)) _active)
  (:quality
   (&optional __quality)
   (if __quality (setq _quality __quality)) _quality)
  (:bandwidth
   (&optional __bandwidth)
   (if __bandwidth (setq _bandwidth __bandwidth)) _bandwidth)
  (:hops
   (&optional __hops)
   (if __hops (setq _hops __hops)) _hops)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _drone_id
    4
    ;; bool _active
    1
    ;; int32 _quality
    4
    ;; int32 _bandwidth
    4
    ;; int32 _hops
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _drone_id
       (write-long _drone_id s)
     ;; bool _active
       (if _active (write-byte -1 s) (write-byte 0 s))
     ;; int32 _quality
       (write-long _quality s)
     ;; int32 _bandwidth
       (write-long _bandwidth s)
     ;; int32 _hops
       (write-long _hops s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _drone_id
     (setq _drone_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _active
     (setq _active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _quality
     (setq _quality (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _bandwidth
     (setq _bandwidth (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _hops
     (setq _hops (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get swarmcomm_msgs::drone_network_status :md5sum-) "63a82d3d4b8f3839b01ee568fe5fa8ce")
(setf (get swarmcomm_msgs::drone_network_status :datatype-) "swarmcomm_msgs/drone_network_status")
(setf (get swarmcomm_msgs::drone_network_status :definition-)
      "Header header
uint32 drone_id
bool active
int32 quality
int32 bandwidth
int32 hops

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

")



(provide :swarmcomm_msgs/drone_network_status "63a82d3d4b8f3839b01ee568fe5fa8ce")


