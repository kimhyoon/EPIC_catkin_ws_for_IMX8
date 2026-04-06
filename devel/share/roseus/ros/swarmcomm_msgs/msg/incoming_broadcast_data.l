;; Auto-generated. Do not edit!


(when (boundp 'swarmcomm_msgs::incoming_broadcast_data)
  (if (not (find-package "SWARMCOMM_MSGS"))
    (make-package "SWARMCOMM_MSGS"))
  (shadow 'incoming_broadcast_data (find-package "SWARMCOMM_MSGS")))
(unless (find-package "SWARMCOMM_MSGS::INCOMING_BROADCAST_DATA")
  (make-package "SWARMCOMM_MSGS::INCOMING_BROADCAST_DATA"))

(in-package "ROS")
;;//! \htmlinclude incoming_broadcast_data.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass swarmcomm_msgs::incoming_broadcast_data
  :super ros::object
  :slots (_header _remote_id _remote_recv_time _lps_time _data _source ))

(defmethod swarmcomm_msgs::incoming_broadcast_data
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:remote_id __remote_id) 0)
    ((:remote_recv_time __remote_recv_time) 0)
    ((:lps_time __lps_time) 0)
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    ((:source __source) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _remote_id (round __remote_id))
   (setq _remote_recv_time (round __remote_recv_time))
   (setq _lps_time (round __lps_time))
   (setq _data __data)
   (setq _source (round __source))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:remote_id
   (&optional __remote_id)
   (if __remote_id (setq _remote_id __remote_id)) _remote_id)
  (:remote_recv_time
   (&optional __remote_recv_time)
   (if __remote_recv_time (setq _remote_recv_time __remote_recv_time)) _remote_recv_time)
  (:lps_time
   (&optional __lps_time)
   (if __lps_time (setq _lps_time __lps_time)) _lps_time)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:source
   (&optional __source)
   (if __source (setq _source __source)) _source)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _remote_id
    4
    ;; uint32 _remote_recv_time
    4
    ;; uint32 _lps_time
    4
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ;; int8 _source
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _remote_id
       (write-long _remote_id s)
     ;; uint32 _remote_recv_time
       (write-long _remote_recv_time s)
     ;; uint32 _lps_time
       (write-long _lps_time s)
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;; int8 _source
       (write-byte _source s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _remote_id
     (setq _remote_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _remote_recv_time
     (setq _remote_recv_time (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _lps_time
     (setq _lps_time (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;; int8 _source
     (setq _source (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _source 127) (setq _source (- _source 256)))
   ;;
   self)
  )

(setf (get swarmcomm_msgs::incoming_broadcast_data :md5sum-) "7fbd088099406fde7cc514736d266b32")
(setf (get swarmcomm_msgs::incoming_broadcast_data :datatype-) "swarmcomm_msgs/incoming_broadcast_data")
(setf (get swarmcomm_msgs::incoming_broadcast_data :definition-)
      "Header header
uint32 remote_id
uint32 remote_recv_time
uint32 lps_time
uint8[] data

int8 source #0 UWB 1 WIFI
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



(provide :swarmcomm_msgs/incoming_broadcast_data "7fbd088099406fde7cc514736d266b32")


