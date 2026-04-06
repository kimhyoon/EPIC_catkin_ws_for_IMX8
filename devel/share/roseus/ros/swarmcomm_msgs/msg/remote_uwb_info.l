;; Auto-generated. Do not edit!


(when (boundp 'swarmcomm_msgs::remote_uwb_info)
  (if (not (find-package "SWARMCOMM_MSGS"))
    (make-package "SWARMCOMM_MSGS"))
  (shadow 'remote_uwb_info (find-package "SWARMCOMM_MSGS")))
(unless (find-package "SWARMCOMM_MSGS::REMOTE_UWB_INFO")
  (make-package "SWARMCOMM_MSGS::REMOTE_UWB_INFO"))

(in-package "ROS")
;;//! \htmlinclude remote_uwb_info.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass swarmcomm_msgs::remote_uwb_info
  :super ros::object
  :slots (_header _sys_time _remote_node_num _self_id _node_ids _node_dis _fp_rssi _rx_rssi _recv_distance_time _active ))

(defmethod swarmcomm_msgs::remote_uwb_info
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:sys_time __sys_time) 0)
    ((:remote_node_num __remote_node_num) 0)
    ((:self_id __self_id) 0)
    ((:node_ids __node_ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:node_dis __node_dis) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:fp_rssi __fp_rssi) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:rx_rssi __rx_rssi) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:recv_distance_time __recv_distance_time) (make-array 0 :initial-element 0 :element-type :integer))
    ((:active __active) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _sys_time (round __sys_time))
   (setq _remote_node_num (round __remote_node_num))
   (setq _self_id (round __self_id))
   (setq _node_ids __node_ids)
   (setq _node_dis __node_dis)
   (setq _fp_rssi __fp_rssi)
   (setq _rx_rssi __rx_rssi)
   (setq _recv_distance_time __recv_distance_time)
   (setq _active __active)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:sys_time
   (&optional __sys_time)
   (if __sys_time (setq _sys_time __sys_time)) _sys_time)
  (:remote_node_num
   (&optional __remote_node_num)
   (if __remote_node_num (setq _remote_node_num __remote_node_num)) _remote_node_num)
  (:self_id
   (&optional __self_id)
   (if __self_id (setq _self_id __self_id)) _self_id)
  (:node_ids
   (&optional __node_ids)
   (if __node_ids (setq _node_ids __node_ids)) _node_ids)
  (:node_dis
   (&optional __node_dis)
   (if __node_dis (setq _node_dis __node_dis)) _node_dis)
  (:fp_rssi
   (&optional __fp_rssi)
   (if __fp_rssi (setq _fp_rssi __fp_rssi)) _fp_rssi)
  (:rx_rssi
   (&optional __rx_rssi)
   (if __rx_rssi (setq _rx_rssi __rx_rssi)) _rx_rssi)
  (:recv_distance_time
   (&optional __recv_distance_time)
   (if __recv_distance_time (setq _recv_distance_time __recv_distance_time)) _recv_distance_time)
  (:active
   (&optional __active)
   (if __active (setq _active __active)) _active)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _sys_time
    4
    ;; uint32 _remote_node_num
    4
    ;; uint32 _self_id
    4
    ;; uint32[] _node_ids
    (* 4    (length _node_ids)) 4
    ;; float32[] _node_dis
    (* 4    (length _node_dis)) 4
    ;; float32[] _fp_rssi
    (* 4    (length _fp_rssi)) 4
    ;; float32[] _rx_rssi
    (* 4    (length _rx_rssi)) 4
    ;; uint32[] _recv_distance_time
    (* 4    (length _recv_distance_time)) 4
    ;; bool[] _active
    (* 1    (length _active)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _sys_time
       (write-long _sys_time s)
     ;; uint32 _remote_node_num
       (write-long _remote_node_num s)
     ;; uint32 _self_id
       (write-long _self_id s)
     ;; uint32[] _node_ids
     (write-long (length _node_ids) s)
     (dotimes (i (length _node_ids))
       (write-long (elt _node_ids i) s)
       )
     ;; float32[] _node_dis
     (write-long (length _node_dis) s)
     (dotimes (i (length _node_dis))
       (sys::poke (elt _node_dis i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _fp_rssi
     (write-long (length _fp_rssi) s)
     (dotimes (i (length _fp_rssi))
       (sys::poke (elt _fp_rssi i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _rx_rssi
     (write-long (length _rx_rssi) s)
     (dotimes (i (length _rx_rssi))
       (sys::poke (elt _rx_rssi i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; uint32[] _recv_distance_time
     (write-long (length _recv_distance_time) s)
     (dotimes (i (length _recv_distance_time))
       (write-long (elt _recv_distance_time i) s)
       )
     ;; bool[] _active
     (write-long (length _active) s)
     (dotimes (i (length _active))
       (if (elt _active i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _sys_time
     (setq _sys_time (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _remote_node_num
     (setq _remote_node_num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _self_id
     (setq _self_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32[] _node_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _node_ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _node_ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32[] _node_dis
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _node_dis (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _node_dis i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _fp_rssi
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fp_rssi (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _fp_rssi i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _rx_rssi
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rx_rssi (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _rx_rssi i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; uint32[] _recv_distance_time
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _recv_distance_time (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _recv_distance_time i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; bool[] _active
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _active (make-list n))
     (dotimes (i n)
     (setf (elt _active i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get swarmcomm_msgs::remote_uwb_info :md5sum-) "e25f2594fd25635dd69a8518fb143b76")
(setf (get swarmcomm_msgs::remote_uwb_info :datatype-) "swarmcomm_msgs/remote_uwb_info")
(setf (get swarmcomm_msgs::remote_uwb_info :definition-)
      "Header header
uint32 sys_time
uint32 remote_node_num
uint32 self_id
uint32[] node_ids
float32[] node_dis
float32[] fp_rssi
float32[] rx_rssi
uint32[] recv_distance_time
bool[] active

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



(provide :swarmcomm_msgs/remote_uwb_info "e25f2594fd25635dd69a8518fb143b76")


