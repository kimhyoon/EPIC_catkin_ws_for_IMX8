;; Auto-generated. Do not edit!


(when (boundp 'epic_planner::GoalService)
  (if (not (find-package "EPIC_PLANNER"))
    (make-package "EPIC_PLANNER"))
  (shadow 'GoalService (find-package "EPIC_PLANNER")))
(unless (find-package "EPIC_PLANNER::GOALSERVICE")
  (make-package "EPIC_PLANNER::GOALSERVICE"))
(unless (find-package "EPIC_PLANNER::GOALSERVICEREQUEST")
  (make-package "EPIC_PLANNER::GOALSERVICEREQUEST"))
(unless (find-package "EPIC_PLANNER::GOALSERVICERESPONSE")
  (make-package "EPIC_PLANNER::GOALSERVICERESPONSE"))

(in-package "ROS")





(defclass epic_planner::GoalServiceRequest
  :super ros::object
  :slots (_x _y _z _yaw ))

(defmethod epic_planner::GoalServiceRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:yaw __yaw) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _yaw (float __yaw))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _yaw
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass epic_planner::GoalServiceResponse
  :super ros::object
  :slots (_success _message ))

(defmethod epic_planner::GoalServiceResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass epic_planner::GoalService
  :super ros::object
  :slots ())

(setf (get epic_planner::GoalService :md5sum-) "adda1280f83d6408fe1b7382c0bc294d")
(setf (get epic_planner::GoalService :datatype-) "epic_planner/GoalService")
(setf (get epic_planner::GoalService :request) epic_planner::GoalServiceRequest)
(setf (get epic_planner::GoalService :response) epic_planner::GoalServiceResponse)

(defmethod epic_planner::GoalServiceRequest
  (:response () (instance epic_planner::GoalServiceResponse :init)))

(setf (get epic_planner::GoalServiceRequest :md5sum-) "adda1280f83d6408fe1b7382c0bc294d")
(setf (get epic_planner::GoalServiceRequest :datatype-) "epic_planner/GoalServiceRequest")
(setf (get epic_planner::GoalServiceRequest :definition-)
      "float64 x
float64 y
float64 z
float64 yaw
---
bool success
string message

")

(setf (get epic_planner::GoalServiceResponse :md5sum-) "adda1280f83d6408fe1b7382c0bc294d")
(setf (get epic_planner::GoalServiceResponse :datatype-) "epic_planner/GoalServiceResponse")
(setf (get epic_planner::GoalServiceResponse :definition-)
      "float64 x
float64 y
float64 z
float64 yaw
---
bool success
string message

")



(provide :epic_planner/GoalService "adda1280f83d6408fe1b7382c0bc294d")


