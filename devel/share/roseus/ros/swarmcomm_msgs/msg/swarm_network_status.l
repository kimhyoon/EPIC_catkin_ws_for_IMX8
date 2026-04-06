;; Auto-generated. Do not edit!


(when (boundp 'swarmcomm_msgs::swarm_network_status)
  (if (not (find-package "SWARMCOMM_MSGS"))
    (make-package "SWARMCOMM_MSGS"))
  (shadow 'swarm_network_status (find-package "SWARMCOMM_MSGS")))
(unless (find-package "SWARMCOMM_MSGS::SWARM_NETWORK_STATUS")
  (make-package "SWARMCOMM_MSGS::SWARM_NETWORK_STATUS"))

(in-package "ROS")
;;//! \htmlinclude swarm_network_status.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass swarmcomm_msgs::swarm_network_status
  :super ros::object
  :slots (_header _node_ids _network_status ))

(defmethod swarmcomm_msgs::swarm_network_status
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:node_ids __node_ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:network_status __network_status) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _node_ids __node_ids)
   (setq _network_status __network_status)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:node_ids
   (&optional __node_ids)
   (if __node_ids (setq _node_ids __node_ids)) _node_ids)
  (:network_status
   (&rest __network_status)
   (if (keywordp (car __network_status))
       (send* _network_status __network_status)
     (progn
       (if __network_status (setq _network_status (car __network_status)))
       _network_status)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32[] _node_ids
    (* 4    (length _node_ids)) 4
    ;; swarmcomm_msgs/drone_network_status[] _network_status
    (apply #'+ (send-all _network_status :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32[] _node_ids
     (write-long (length _node_ids) s)
     (dotimes (i (length _node_ids))
       (write-long (elt _node_ids i) s)
       )
     ;; swarmcomm_msgs/drone_network_status[] _network_status
     (write-long (length _network_status) s)
     (dolist (elem _network_status)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32[] _node_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _node_ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _node_ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; swarmcomm_msgs/drone_network_status[] _network_status
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _network_status (let (r) (dotimes (i n) (push (instance swarmcomm_msgs::drone_network_status :init) r)) r))
     (dolist (elem- _network_status)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get swarmcomm_msgs::swarm_network_status :md5sum-) "1c1c1859eb0bfda60ba46555f90ca67f")
(setf (get swarmcomm_msgs::swarm_network_status :datatype-) "swarmcomm_msgs/swarm_network_status")
(setf (get swarmcomm_msgs::swarm_network_status :definition-)
      "Header header
uint32[] node_ids
drone_network_status[] network_status
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
MSG: swarmcomm_msgs/drone_network_status
Header header
uint32 drone_id
bool active
int32 quality
int32 bandwidth
int32 hops

")



(provide :swarmcomm_msgs/swarm_network_status "1c1c1859eb0bfda60ba46555f90ca67f")


