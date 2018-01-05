;; Auto-generated. Do not edit!


(when (boundp 'dobot::SetIOMultiplexing)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'SetIOMultiplexing (find-package "DOBOT")))
(unless (find-package "DOBOT::SETIOMULTIPLEXING")
  (make-package "DOBOT::SETIOMULTIPLEXING"))
(unless (find-package "DOBOT::SETIOMULTIPLEXINGREQUEST")
  (make-package "DOBOT::SETIOMULTIPLEXINGREQUEST"))
(unless (find-package "DOBOT::SETIOMULTIPLEXINGRESPONSE")
  (make-package "DOBOT::SETIOMULTIPLEXINGRESPONSE"))

(in-package "ROS")





(defclass dobot::SetIOMultiplexingRequest
  :super ros::object
  :slots (_address _multiplex _isQueued ))

(defmethod dobot::SetIOMultiplexingRequest
  (:init
   (&key
    ((:address __address) 0)
    ((:multiplex __multiplex) 0)
    ((:isQueued __isQueued) nil)
    )
   (send-super :init)
   (setq _address (round __address))
   (setq _multiplex (round __multiplex))
   (setq _isQueued __isQueued)
   self)
  (:address
   (&optional __address)
   (if __address (setq _address __address)) _address)
  (:multiplex
   (&optional __multiplex)
   (if __multiplex (setq _multiplex __multiplex)) _multiplex)
  (:isQueued
   (&optional __isQueued)
   (if __isQueued (setq _isQueued __isQueued)) _isQueued)
  (:serialization-length
   ()
   (+
    ;; uint8 _address
    1
    ;; uint8 _multiplex
    1
    ;; bool _isQueued
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _address
       (write-byte _address s)
     ;; uint8 _multiplex
       (write-byte _multiplex s)
     ;; bool _isQueued
       (if _isQueued (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _address
     (setq _address (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _multiplex
     (setq _multiplex (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _isQueued
     (setq _isQueued (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dobot::SetIOMultiplexingResponse
  :super ros::object
  :slots (_result _queuedCmdIndex ))

(defmethod dobot::SetIOMultiplexingResponse
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

(defclass dobot::SetIOMultiplexing
  :super ros::object
  :slots ())

(setf (get dobot::SetIOMultiplexing :md5sum-) "0d42b2a07901322be1553ed3f1e55579")
(setf (get dobot::SetIOMultiplexing :datatype-) "dobot/SetIOMultiplexing")
(setf (get dobot::SetIOMultiplexing :request) dobot::SetIOMultiplexingRequest)
(setf (get dobot::SetIOMultiplexing :response) dobot::SetIOMultiplexingResponse)

(defmethod dobot::SetIOMultiplexingRequest
  (:response () (instance dobot::SetIOMultiplexingResponse :init)))

(setf (get dobot::SetIOMultiplexingRequest :md5sum-) "0d42b2a07901322be1553ed3f1e55579")
(setf (get dobot::SetIOMultiplexingRequest :datatype-) "dobot/SetIOMultiplexingRequest")
(setf (get dobot::SetIOMultiplexingRequest :definition-)
      "uint8 address
uint8 multiplex
bool isQueued
---
int32 result
uint64 queuedCmdIndex

")

(setf (get dobot::SetIOMultiplexingResponse :md5sum-) "0d42b2a07901322be1553ed3f1e55579")
(setf (get dobot::SetIOMultiplexingResponse :datatype-) "dobot/SetIOMultiplexingResponse")
(setf (get dobot::SetIOMultiplexingResponse :definition-)
      "uint8 address
uint8 multiplex
bool isQueued
---
int32 result
uint64 queuedCmdIndex

")



(provide :dobot/SetIOMultiplexing "0d42b2a07901322be1553ed3f1e55579")


