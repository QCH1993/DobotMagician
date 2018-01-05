;; Auto-generated. Do not edit!


(when (boundp 'dobot::SetIOPWM)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'SetIOPWM (find-package "DOBOT")))
(unless (find-package "DOBOT::SETIOPWM")
  (make-package "DOBOT::SETIOPWM"))
(unless (find-package "DOBOT::SETIOPWMREQUEST")
  (make-package "DOBOT::SETIOPWMREQUEST"))
(unless (find-package "DOBOT::SETIOPWMRESPONSE")
  (make-package "DOBOT::SETIOPWMRESPONSE"))

(in-package "ROS")





(defclass dobot::SetIOPWMRequest
  :super ros::object
  :slots (_address _frequency _dutyCycle _isQueued ))

(defmethod dobot::SetIOPWMRequest
  (:init
   (&key
    ((:address __address) 0)
    ((:frequency __frequency) 0.0)
    ((:dutyCycle __dutyCycle) 0.0)
    ((:isQueued __isQueued) nil)
    )
   (send-super :init)
   (setq _address (round __address))
   (setq _frequency (float __frequency))
   (setq _dutyCycle (float __dutyCycle))
   (setq _isQueued __isQueued)
   self)
  (:address
   (&optional __address)
   (if __address (setq _address __address)) _address)
  (:frequency
   (&optional __frequency)
   (if __frequency (setq _frequency __frequency)) _frequency)
  (:dutyCycle
   (&optional __dutyCycle)
   (if __dutyCycle (setq _dutyCycle __dutyCycle)) _dutyCycle)
  (:isQueued
   (&optional __isQueued)
   (if __isQueued (setq _isQueued __isQueued)) _isQueued)
  (:serialization-length
   ()
   (+
    ;; uint8 _address
    1
    ;; float32 _frequency
    4
    ;; float32 _dutyCycle
    4
    ;; bool _isQueued
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _address
       (write-byte _address s)
     ;; float32 _frequency
       (sys::poke _frequency (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dutyCycle
       (sys::poke _dutyCycle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _isQueued
       (if _isQueued (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _address
     (setq _address (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _frequency
     (setq _frequency (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dutyCycle
     (setq _dutyCycle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _isQueued
     (setq _isQueued (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dobot::SetIOPWMResponse
  :super ros::object
  :slots (_result _queuedCmdIndex ))

(defmethod dobot::SetIOPWMResponse
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

(defclass dobot::SetIOPWM
  :super ros::object
  :slots ())

(setf (get dobot::SetIOPWM :md5sum-) "ea172c95eba595197a616b555cba00ad")
(setf (get dobot::SetIOPWM :datatype-) "dobot/SetIOPWM")
(setf (get dobot::SetIOPWM :request) dobot::SetIOPWMRequest)
(setf (get dobot::SetIOPWM :response) dobot::SetIOPWMResponse)

(defmethod dobot::SetIOPWMRequest
  (:response () (instance dobot::SetIOPWMResponse :init)))

(setf (get dobot::SetIOPWMRequest :md5sum-) "ea172c95eba595197a616b555cba00ad")
(setf (get dobot::SetIOPWMRequest :datatype-) "dobot/SetIOPWMRequest")
(setf (get dobot::SetIOPWMRequest :definition-)
      "uint8 address
float32 frequency
float32 dutyCycle
bool isQueued
---
int32 result
uint64 queuedCmdIndex

")

(setf (get dobot::SetIOPWMResponse :md5sum-) "ea172c95eba595197a616b555cba00ad")
(setf (get dobot::SetIOPWMResponse :datatype-) "dobot/SetIOPWMResponse")
(setf (get dobot::SetIOPWMResponse :definition-)
      "uint8 address
float32 frequency
float32 dutyCycle
bool isQueued
---
int32 result
uint64 queuedCmdIndex

")



(provide :dobot/SetIOPWM "ea172c95eba595197a616b555cba00ad")


