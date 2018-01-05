;; Auto-generated. Do not edit!


(when (boundp 'dobot::SetJOGJointParams)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'SetJOGJointParams (find-package "DOBOT")))
(unless (find-package "DOBOT::SETJOGJOINTPARAMS")
  (make-package "DOBOT::SETJOGJOINTPARAMS"))
(unless (find-package "DOBOT::SETJOGJOINTPARAMSREQUEST")
  (make-package "DOBOT::SETJOGJOINTPARAMSREQUEST"))
(unless (find-package "DOBOT::SETJOGJOINTPARAMSRESPONSE")
  (make-package "DOBOT::SETJOGJOINTPARAMSRESPONSE"))

(in-package "ROS")





(defclass dobot::SetJOGJointParamsRequest
  :super ros::object
  :slots (_velocity _acceleration _isQueued ))

(defmethod dobot::SetJOGJointParamsRequest
  (:init
   (&key
    ((:velocity __velocity) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:acceleration __acceleration) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:isQueued __isQueued) nil)
    )
   (send-super :init)
   (setq _velocity __velocity)
   (setq _acceleration __acceleration)
   (setq _isQueued __isQueued)
   self)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:acceleration
   (&optional __acceleration)
   (if __acceleration (setq _acceleration __acceleration)) _acceleration)
  (:isQueued
   (&optional __isQueued)
   (if __isQueued (setq _isQueued __isQueued)) _isQueued)
  (:serialization-length
   ()
   (+
    ;; float32[] _velocity
    (* 4    (length _velocity)) 4
    ;; float32[] _acceleration
    (* 4    (length _acceleration)) 4
    ;; bool _isQueued
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _velocity
     (write-long (length _velocity) s)
     (dotimes (i (length _velocity))
       (sys::poke (elt _velocity i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _acceleration
     (write-long (length _acceleration) s)
     (dotimes (i (length _acceleration))
       (sys::poke (elt _acceleration i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; bool _isQueued
       (if _isQueued (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _velocity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocity (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _velocity i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _acceleration
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _acceleration (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _acceleration i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; bool _isQueued
     (setq _isQueued (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dobot::SetJOGJointParamsResponse
  :super ros::object
  :slots (_result _queuedCmdIndex ))

(defmethod dobot::SetJOGJointParamsResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:queuedCmdIndex __queuedCmdIndex) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _queuedCmdIndex (round __queuedCmdIndex))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:queuedCmdIndex
   (&optional __queuedCmdIndex)
   (if __queuedCmdIndex (setq _queuedCmdIndex __queuedCmdIndex)) _queuedCmdIndex)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; uint64 _queuedCmdIndex
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; uint64 _queuedCmdIndex
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _queuedCmdIndex (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _queuedCmdIndex) (= (length (_queuedCmdIndex . bv)) 2)) ;; bignum
              (write-long (ash (elt (_queuedCmdIndex . bv) 0) 0) s)
              (write-long (ash (elt (_queuedCmdIndex . bv) 1) -1) s))
             ((and (class _queuedCmdIndex) (= (length (_queuedCmdIndex . bv)) 1)) ;; big1
              (write-long (elt (_queuedCmdIndex . bv) 0) s)
              (write-long (if (>= _queuedCmdIndex 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _queuedCmdIndex s)(write-long (if (>= _queuedCmdIndex 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint64 _queuedCmdIndex
     
#+(or :alpha :irix6 :x86_64)
      (setf _queuedCmdIndex (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _queuedCmdIndex (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass dobot::SetJOGJointParams
  :super ros::object
  :slots ())

(setf (get dobot::SetJOGJointParams :md5sum-) "66026db026b6b1016fb4eccdf054b1ba")
(setf (get dobot::SetJOGJointParams :datatype-) "dobot/SetJOGJointParams")
(setf (get dobot::SetJOGJointParams :request) dobot::SetJOGJointParamsRequest)
(setf (get dobot::SetJOGJointParams :response) dobot::SetJOGJointParamsResponse)

(defmethod dobot::SetJOGJointParamsRequest
  (:response () (instance dobot::SetJOGJointParamsResponse :init)))

(setf (get dobot::SetJOGJointParamsRequest :md5sum-) "66026db026b6b1016fb4eccdf054b1ba")
(setf (get dobot::SetJOGJointParamsRequest :datatype-) "dobot/SetJOGJointParamsRequest")
(setf (get dobot::SetJOGJointParamsRequest :definition-)
      "float32[] velocity
float32[] acceleration
bool isQueued
---
int32 result
uint64 queuedCmdIndex

")

(setf (get dobot::SetJOGJointParamsResponse :md5sum-) "66026db026b6b1016fb4eccdf054b1ba")
(setf (get dobot::SetJOGJointParamsResponse :datatype-) "dobot/SetJOGJointParamsResponse")
(setf (get dobot::SetJOGJointParamsResponse :definition-)
      "float32[] velocity
float32[] acceleration
bool isQueued
---
int32 result
uint64 queuedCmdIndex

")



(provide :dobot/SetJOGJointParams "66026db026b6b1016fb4eccdf054b1ba")


