;; Auto-generated. Do not edit!


(when (boundp 'dobot::SetJOGCmd)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'SetJOGCmd (find-package "DOBOT")))
(unless (find-package "DOBOT::SETJOGCMD")
  (make-package "DOBOT::SETJOGCMD"))
(unless (find-package "DOBOT::SETJOGCMDREQUEST")
  (make-package "DOBOT::SETJOGCMDREQUEST"))
(unless (find-package "DOBOT::SETJOGCMDRESPONSE")
  (make-package "DOBOT::SETJOGCMDRESPONSE"))

(in-package "ROS")





(defclass dobot::SetJOGCmdRequest
  :super ros::object
  :slots (_isJoint _cmd ))

(defmethod dobot::SetJOGCmdRequest
  (:init
   (&key
    ((:isJoint __isJoint) 0)
    ((:cmd __cmd) 0)
    )
   (send-super :init)
   (setq _isJoint (round __isJoint))
   (setq _cmd (round __cmd))
   self)
  (:isJoint
   (&optional __isJoint)
   (if __isJoint (setq _isJoint __isJoint)) _isJoint)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:serialization-length
   ()
   (+
    ;; uint8 _isJoint
    1
    ;; uint8 _cmd
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _isJoint
       (write-byte _isJoint s)
     ;; uint8 _cmd
       (write-byte _cmd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _isJoint
     (setq _isJoint (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cmd
     (setq _cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dobot::SetJOGCmdResponse
  :super ros::object
  :slots (_result _queuedCmdIndex ))

(defmethod dobot::SetJOGCmdResponse
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

(defclass dobot::SetJOGCmd
  :super ros::object
  :slots ())

(setf (get dobot::SetJOGCmd :md5sum-) "1b7c1bd2f60c0408e6705df335544340")
(setf (get dobot::SetJOGCmd :datatype-) "dobot/SetJOGCmd")
(setf (get dobot::SetJOGCmd :request) dobot::SetJOGCmdRequest)
(setf (get dobot::SetJOGCmd :response) dobot::SetJOGCmdResponse)

(defmethod dobot::SetJOGCmdRequest
  (:response () (instance dobot::SetJOGCmdResponse :init)))

(setf (get dobot::SetJOGCmdRequest :md5sum-) "1b7c1bd2f60c0408e6705df335544340")
(setf (get dobot::SetJOGCmdRequest :datatype-) "dobot/SetJOGCmdRequest")
(setf (get dobot::SetJOGCmdRequest :definition-)
      "uint8 isJoint
uint8 cmd
---
int32 result
uint64 queuedCmdIndex

")

(setf (get dobot::SetJOGCmdResponse :md5sum-) "1b7c1bd2f60c0408e6705df335544340")
(setf (get dobot::SetJOGCmdResponse :datatype-) "dobot/SetJOGCmdResponse")
(setf (get dobot::SetJOGCmdResponse :definition-)
      "uint8 isJoint
uint8 cmd
---
int32 result
uint64 queuedCmdIndex

")



(provide :dobot/SetJOGCmd "1b7c1bd2f60c0408e6705df335544340")


