;; Auto-generated. Do not edit!


(when (boundp 'swarm_msgs::LoopEdge)
  (if (not (find-package "SWARM_MSGS"))
    (make-package "SWARM_MSGS"))
  (shadow 'LoopEdge (find-package "SWARM_MSGS")))
(unless (find-package "SWARM_MSGS::LOOPEDGE")
  (make-package "SWARM_MSGS::LOOPEDGE"))

(in-package "ROS")
;;//! \htmlinclude LoopEdge.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass swarm_msgs::LoopEdge
  :super ros::object
  :slots (_ts_a _ts_b _drone_id_a _drone_id_b _keyframe_id_a _keyframe_id_b _relative_pose _self_pose_a _self_pose_b _pos_cov _ang_cov _pnp_inlier_num _is_4dof _id ))

(defmethod swarm_msgs::LoopEdge
  (:init
   (&key
    ((:ts_a __ts_a) (instance ros::time :init))
    ((:ts_b __ts_b) (instance ros::time :init))
    ((:drone_id_a __drone_id_a) 0)
    ((:drone_id_b __drone_id_b) 0)
    ((:keyframe_id_a __keyframe_id_a) 0)
    ((:keyframe_id_b __keyframe_id_b) 0)
    ((:relative_pose __relative_pose) (instance geometry_msgs::Pose :init))
    ((:self_pose_a __self_pose_a) (instance geometry_msgs::Pose :init))
    ((:self_pose_b __self_pose_b) (instance geometry_msgs::Pose :init))
    ((:pos_cov __pos_cov) (instance geometry_msgs::Point :init))
    ((:ang_cov __ang_cov) (instance geometry_msgs::Point :init))
    ((:pnp_inlier_num __pnp_inlier_num) 0)
    ((:is_4dof __is_4dof) nil)
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _ts_a __ts_a)
   (setq _ts_b __ts_b)
   (setq _drone_id_a (round __drone_id_a))
   (setq _drone_id_b (round __drone_id_b))
   (setq _keyframe_id_a (round __keyframe_id_a))
   (setq _keyframe_id_b (round __keyframe_id_b))
   (setq _relative_pose __relative_pose)
   (setq _self_pose_a __self_pose_a)
   (setq _self_pose_b __self_pose_b)
   (setq _pos_cov __pos_cov)
   (setq _ang_cov __ang_cov)
   (setq _pnp_inlier_num (round __pnp_inlier_num))
   (setq _is_4dof __is_4dof)
   (setq _id (round __id))
   self)
  (:ts_a
   (&optional __ts_a)
   (if __ts_a (setq _ts_a __ts_a)) _ts_a)
  (:ts_b
   (&optional __ts_b)
   (if __ts_b (setq _ts_b __ts_b)) _ts_b)
  (:drone_id_a
   (&optional __drone_id_a)
   (if __drone_id_a (setq _drone_id_a __drone_id_a)) _drone_id_a)
  (:drone_id_b
   (&optional __drone_id_b)
   (if __drone_id_b (setq _drone_id_b __drone_id_b)) _drone_id_b)
  (:keyframe_id_a
   (&optional __keyframe_id_a)
   (if __keyframe_id_a (setq _keyframe_id_a __keyframe_id_a)) _keyframe_id_a)
  (:keyframe_id_b
   (&optional __keyframe_id_b)
   (if __keyframe_id_b (setq _keyframe_id_b __keyframe_id_b)) _keyframe_id_b)
  (:relative_pose
   (&rest __relative_pose)
   (if (keywordp (car __relative_pose))
       (send* _relative_pose __relative_pose)
     (progn
       (if __relative_pose (setq _relative_pose (car __relative_pose)))
       _relative_pose)))
  (:self_pose_a
   (&rest __self_pose_a)
   (if (keywordp (car __self_pose_a))
       (send* _self_pose_a __self_pose_a)
     (progn
       (if __self_pose_a (setq _self_pose_a (car __self_pose_a)))
       _self_pose_a)))
  (:self_pose_b
   (&rest __self_pose_b)
   (if (keywordp (car __self_pose_b))
       (send* _self_pose_b __self_pose_b)
     (progn
       (if __self_pose_b (setq _self_pose_b (car __self_pose_b)))
       _self_pose_b)))
  (:pos_cov
   (&rest __pos_cov)
   (if (keywordp (car __pos_cov))
       (send* _pos_cov __pos_cov)
     (progn
       (if __pos_cov (setq _pos_cov (car __pos_cov)))
       _pos_cov)))
  (:ang_cov
   (&rest __ang_cov)
   (if (keywordp (car __ang_cov))
       (send* _ang_cov __ang_cov)
     (progn
       (if __ang_cov (setq _ang_cov (car __ang_cov)))
       _ang_cov)))
  (:pnp_inlier_num
   (&optional __pnp_inlier_num)
   (if __pnp_inlier_num (setq _pnp_inlier_num __pnp_inlier_num)) _pnp_inlier_num)
  (:is_4dof
   (&optional (__is_4dof :null))
   (if (not (eq __is_4dof :null)) (setq _is_4dof __is_4dof)) _is_4dof)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; time _ts_a
    8
    ;; time _ts_b
    8
    ;; uint64 _drone_id_a
    8
    ;; uint64 _drone_id_b
    8
    ;; uint64 _keyframe_id_a
    8
    ;; uint64 _keyframe_id_b
    8
    ;; geometry_msgs/Pose _relative_pose
    (send _relative_pose :serialization-length)
    ;; geometry_msgs/Pose _self_pose_a
    (send _self_pose_a :serialization-length)
    ;; geometry_msgs/Pose _self_pose_b
    (send _self_pose_b :serialization-length)
    ;; geometry_msgs/Point _pos_cov
    (send _pos_cov :serialization-length)
    ;; geometry_msgs/Point _ang_cov
    (send _ang_cov :serialization-length)
    ;; int32 _pnp_inlier_num
    4
    ;; bool _is_4dof
    1
    ;; uint64 _id
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _ts_a
       (write-long (send _ts_a :sec) s) (write-long (send _ts_a :nsec) s)
     ;; time _ts_b
       (write-long (send _ts_b :sec) s) (write-long (send _ts_b :nsec) s)
     ;; uint64 _drone_id_a
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _drone_id_a (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _drone_id_a) (= (length (_drone_id_a . bv)) 2)) ;; bignum
              (write-long (ash (elt (_drone_id_a . bv) 0) 0) s)
              (write-long (ash (elt (_drone_id_a . bv) 1) -1) s))
             ((and (class _drone_id_a) (= (length (_drone_id_a . bv)) 1)) ;; big1
              (write-long (elt (_drone_id_a . bv) 0) s)
              (write-long (if (>= _drone_id_a 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _drone_id_a s)(write-long (if (>= _drone_id_a 0) 0 #xffffffff) s)))
     ;; uint64 _drone_id_b
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _drone_id_b (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _drone_id_b) (= (length (_drone_id_b . bv)) 2)) ;; bignum
              (write-long (ash (elt (_drone_id_b . bv) 0) 0) s)
              (write-long (ash (elt (_drone_id_b . bv) 1) -1) s))
             ((and (class _drone_id_b) (= (length (_drone_id_b . bv)) 1)) ;; big1
              (write-long (elt (_drone_id_b . bv) 0) s)
              (write-long (if (>= _drone_id_b 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _drone_id_b s)(write-long (if (>= _drone_id_b 0) 0 #xffffffff) s)))
     ;; uint64 _keyframe_id_a
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _keyframe_id_a (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _keyframe_id_a) (= (length (_keyframe_id_a . bv)) 2)) ;; bignum
              (write-long (ash (elt (_keyframe_id_a . bv) 0) 0) s)
              (write-long (ash (elt (_keyframe_id_a . bv) 1) -1) s))
             ((and (class _keyframe_id_a) (= (length (_keyframe_id_a . bv)) 1)) ;; big1
              (write-long (elt (_keyframe_id_a . bv) 0) s)
              (write-long (if (>= _keyframe_id_a 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _keyframe_id_a s)(write-long (if (>= _keyframe_id_a 0) 0 #xffffffff) s)))
     ;; uint64 _keyframe_id_b
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _keyframe_id_b (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _keyframe_id_b) (= (length (_keyframe_id_b . bv)) 2)) ;; bignum
              (write-long (ash (elt (_keyframe_id_b . bv) 0) 0) s)
              (write-long (ash (elt (_keyframe_id_b . bv) 1) -1) s))
             ((and (class _keyframe_id_b) (= (length (_keyframe_id_b . bv)) 1)) ;; big1
              (write-long (elt (_keyframe_id_b . bv) 0) s)
              (write-long (if (>= _keyframe_id_b 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _keyframe_id_b s)(write-long (if (>= _keyframe_id_b 0) 0 #xffffffff) s)))
     ;; geometry_msgs/Pose _relative_pose
       (send _relative_pose :serialize s)
     ;; geometry_msgs/Pose _self_pose_a
       (send _self_pose_a :serialize s)
     ;; geometry_msgs/Pose _self_pose_b
       (send _self_pose_b :serialize s)
     ;; geometry_msgs/Point _pos_cov
       (send _pos_cov :serialize s)
     ;; geometry_msgs/Point _ang_cov
       (send _ang_cov :serialize s)
     ;; int32 _pnp_inlier_num
       (write-long _pnp_inlier_num s)
     ;; bool _is_4dof
       (if _is_4dof (write-byte -1 s) (write-byte 0 s))
     ;; uint64 _id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _id) (= (length (_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_id . bv) 0) 0) s)
              (write-long (ash (elt (_id . bv) 1) -1) s))
             ((and (class _id) (= (length (_id . bv)) 1)) ;; big1
              (write-long (elt (_id . bv) 0) s)
              (write-long (if (>= _id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _id s)(write-long (if (>= _id 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _ts_a
     (send _ts_a :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _ts_a :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _ts_b
     (send _ts_b :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _ts_b :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint64 _drone_id_a
     
#+(or :alpha :irix6 :x86_64)
      (setf _drone_id_a (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _drone_id_a (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _drone_id_b
     
#+(or :alpha :irix6 :x86_64)
      (setf _drone_id_b (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _drone_id_b (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _keyframe_id_a
     
#+(or :alpha :irix6 :x86_64)
      (setf _keyframe_id_a (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _keyframe_id_a (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _keyframe_id_b
     
#+(or :alpha :irix6 :x86_64)
      (setf _keyframe_id_b (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _keyframe_id_b (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; geometry_msgs/Pose _relative_pose
     (send _relative_pose :deserialize buf ptr-) (incf ptr- (send _relative_pose :serialization-length))
   ;; geometry_msgs/Pose _self_pose_a
     (send _self_pose_a :deserialize buf ptr-) (incf ptr- (send _self_pose_a :serialization-length))
   ;; geometry_msgs/Pose _self_pose_b
     (send _self_pose_b :deserialize buf ptr-) (incf ptr- (send _self_pose_b :serialization-length))
   ;; geometry_msgs/Point _pos_cov
     (send _pos_cov :deserialize buf ptr-) (incf ptr- (send _pos_cov :serialization-length))
   ;; geometry_msgs/Point _ang_cov
     (send _ang_cov :deserialize buf ptr-) (incf ptr- (send _ang_cov :serialization-length))
   ;; int32 _pnp_inlier_num
     (setq _pnp_inlier_num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _is_4dof
     (setq _is_4dof (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint64 _id
     
#+(or :alpha :irix6 :x86_64)
      (setf _id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get swarm_msgs::LoopEdge :md5sum-) "ad50fe35eb11e19dfe778de2e9e9026b")
(setf (get swarm_msgs::LoopEdge :datatype-) "swarm_msgs/LoopEdge")
(setf (get swarm_msgs::LoopEdge :definition-)
      "time ts_a
time ts_b
uint64 drone_id_a
uint64 drone_id_b
uint64 keyframe_id_a
uint64 keyframe_id_b
geometry_msgs/Pose relative_pose

geometry_msgs/Pose self_pose_a
geometry_msgs/Pose self_pose_b

geometry_msgs/Point pos_cov
geometry_msgs/Point ang_cov

#Details for loop
int32 pnp_inlier_num
bool is_4dof
uint64 id

#geometry_msgs/Point[] point_cloud_b
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

")



(provide :swarm_msgs/LoopEdge "ad50fe35eb11e19dfe778de2e9e9026b")


