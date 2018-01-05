;; Auto-generated. Do not edit!


(when (boundp 'dobot::SetIODO)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'SetIODO (find-package "DOBOT")))
(unless (find-package "DOBOT::SETIODO")
  (make-package "DOBOT::SETIODO"))
(unless (find-package "DOBOT::SETIODOREQUEST")
  (make-package "DOBOT::SETIODOREQUEST"))
(unless (find-package "DOBOT::SETIODORESPONSE")
  (make-package "DOBOT::SETIODORESPONSE"))

(in-package "ROS")





(defclass dobot::SetIODORequest
  :super ros::object
  :slots (_address _level _isQueued ))

(defmethod dobot::SetIODORequest
  (:init
   (&key
    ((:address __address) 0)
    ((:level __level) 0)
    ((:isQueued __isQueued) nil)
    )
   (send-super :init)
   (setq _address (round __address))
   (setq _level (round __level))
   (setq _isQueued __isQueued)
   self)
  (:address
   (&optional __address)
   (if __address (setq _address __address)) _address)
  (:level
   (&optional __level)
   (if __level (setq _level __level)) _level)
  (:isQueued
   (&optional __isQueued)
   (if __isQueued (setq _isQueued __isQueued)) _isQueued)
  (:serialization-length
   ()
   (+
    ;; uint8 _address
    1
    ;; uint8 _level
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
     ;; uint8 _level
       (write-byte _level s)
     ;; bool _isQueued
       (if _isQueued (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _address
     (setq _address (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _level
     (setq _level (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _isQueued
     (setq _isQueued (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dobot::SetIODOResponse
  :super ros::object
  :slots (_result _queuedCmdIndex ))

(defmethod dobot::SetIODOResponse
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

(defclass dobot::SetIODO
  :super ros::object
  :slots ())

(setf (get dobot::SetIODO :md5sum-) "1ba1fdd7d67ee9bbca1ff95166a02cb2")
(setf (get dobot::SetIODO :datatype-) "dobot/SetIODO")
(setf (get dobot::SetIODO :request) dobot::SetIODORequest)
(setf (get dobot::SetIODO :response) dobot::SetIODOResponse)

(defmethod dobot::SetIODORequest
  (:response () (instance dobot::SetIODOResponse :init)))

(setf (get dobot::SetIODORequest :md5sum-) "1ba1fdd7d67ee9bbca1ff95166a02cb2")
(setf (get dobot::SetIODORequest :datatype-) "dobot/SetIODORequest")
(setf (get dobot::SetIODORequest :definition-)
      "uint8 address
uint8 level
bool isQueued
---
int32 result
uint64 queuedCmdIndex

")

(setf (get dobot::SetIODOResponse :md5sum-) "1ba1fdd7d67ee9bbca1ff95166a02cb2")
(setf (get dobot::SetIODOResponse :datatype-) "dobot/SetIODOResponse")
(setf (get dobot::SetIODOResponse :definition-)
      "uint8 address
uint8 level
bool isQueued
---
int32 result
uint64 queuedCmdIndex

")



(provide :dobot/SetIODO "1ba1fdd7d67ee9bbca1ff95166a02cb2")


