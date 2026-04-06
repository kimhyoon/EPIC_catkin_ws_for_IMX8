;; Auto-generated. Do not edit!


(when (boundp 'swarmcomm_msgs::data_buffer)
  (if (not (find-package "SWARMCOMM_MSGS"))
    (make-package "SWARMCOMM_MSGS"))
  (shadow 'data_buffer (find-package "SWARMCOMM_MSGS")))
(unless (find-package "SWARMCOMM_MSGS::DATA_BUFFER")
  (make-package "SWARMCOMM_MSGS::DATA_BUFFER"))

(in-package "ROS")
;;//! \htmlinclude data_buffer.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass swarmcomm_msgs::data_buffer
  :super ros::object
  :slots (_header _data _send_method ))

(defmethod swarmcomm_msgs::data_buffer
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    ((:send_method __send_method) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _data __data)
   (setq _send_method (round __send_method))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:send_method
   (&optional __send_method)
   (if __send_method (setq _send_method __send_method)) _send_method)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ;; uint8 _send_method
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;; uint8 _send_method
       (write-byte _send_method s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;; uint8 _send_method
     (setq _send_method (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get swarmcomm_msgs::data_buffer :md5sum-) "b57009adb212892c421cbf75aa66757f")
(setf (get swarmcomm_msgs::data_buffer :datatype-) "swarmcomm_msgs/data_buffer")
(setf (get swarmcomm_msgs::data_buffer :definition-)
      "Header header
uint8[] data

#0 UWB 1 WiFI 2 All
uint8 send_method
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



(provide :swarmcomm_msgs/data_buffer "b57009adb212892c421cbf75aa66757f")


