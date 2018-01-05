;; Auto-generated. Do not edit!


(when (boundp 'dobot::SetHOMEParams)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'SetHOMEParams (find-package "DOBOT")))
(unless (find-package "DOBOT::SETHOMEPARAMS")
  (make-package "DOBOT::SETHOMEPARAMS"))
(unless (find-package "DOBOT::SETHOMEPARAMSREQUEST")
  (make-package "DOBOT::SETHOMEPARAMSREQUEST"))
(unless (find-package "DOBOT::SETHOMEPARAMSRESPONSE")
  (make-package "DOBOT::SETHOMEPARAMSRESPONSE"))

(in-package "ROS")





(defclass dobot::SetHOMEParamsRequest
  :super ros::object
  :slots (_x _y _z _r _isQueued ))

(defmethod dobot::SetHOMEParamsRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:r __r) 0.0)
    ((:isQueued __isQueued) nil)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _r (float __r))
   (setq _isQueued __isQueued)
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
  (:r
   (&optional __r)
   (if __r (setq _r __r)) _r)
  (:isQueued
   (&optional __isQueued)
   (if __isQueued (setq _isQueued __isQueued)) _isQueued)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _r
    4
    ;; bool _isQueued
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _r
       (sys::poke _r (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _isQueued
       (if _isQueued (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _r
     (setq _r (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _isQueued
     (setq _isQueued (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dobot::SetHOMEParamsResponse
  :super ros::object
  :slots (_result _queuedCmdIndex ))

(defmethod dobot::SetHOMEParamsResponse
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

(defclass dobot::SetHOMEParams
  :super ros::object
  :slots ())

(setf (get dobot::SetHOMEParams :md5sum-) "35a11ffe4003d3a9173cdca7e5505ba2")
(setf (get dobot::SetHOMEParams :datatype-) "dobot/SetHOMEParams")
(setf (get dobot::SetHOMEParams :request) dobot::SetHOMEParamsRequest)
(setf (get dobot::SetHOMEParams :response) dobot::SetHOMEParamsResponse)

(defmethod dobot::SetHOMEParamsRequest
  (:response () (instance dobot::SetHOMEParamsResponse :init)))

(setf (get dobot::SetHOMEParamsRequest :md5sum-) "35a11ffe4003d3a9173cdca7e5505ba2")
(setf (get dobot::SetHOMEParamsRequest :datatype-) "dobot/SetHOMEParamsRequest")
(setf (get dobot::SetHOMEParamsRequest :definition-)
      "float32 x
float32 y
float32 z
float32 r
bool isQueued
---
int32 result
uint64 queuedCmdIndex

")

(setf (get dobot::SetHOMEParamsResponse :md5sum-) "35a11ffe4003d3a9173cdca7e5505ba2")
(setf (get dobot::SetHOMEParamsResponse :datatype-) "dobot/SetHOMEParamsResponse")
(setf (get dobot::SetHOMEParamsResponse :definition-)
      "float32 x
float32 y
float32 z
float32 r
bool isQueued
---
int32 result
uint64 queuedCmdIndex

")



(provide :dobot/SetHOMEParams "35a11ffe4003d3a9173cdca7e5505ba2")


