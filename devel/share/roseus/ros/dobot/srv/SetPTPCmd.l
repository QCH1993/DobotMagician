;; Auto-generated. Do not edit!


(when (boundp 'dobot::SetPTPCmd)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'SetPTPCmd (find-package "DOBOT")))
(unless (find-package "DOBOT::SETPTPCMD")
  (make-package "DOBOT::SETPTPCMD"))
(unless (find-package "DOBOT::SETPTPCMDREQUEST")
  (make-package "DOBOT::SETPTPCMDREQUEST"))
(unless (find-package "DOBOT::SETPTPCMDRESPONSE")
  (make-package "DOBOT::SETPTPCMDRESPONSE"))

(in-package "ROS")





(defclass dobot::SetPTPCmdRequest
  :super ros::object
  :slots (_ptpMode _x _y _z _r ))

(defmethod dobot::SetPTPCmdRequest
  (:init
   (&key
    ((:ptpMode __ptpMode) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:r __r) 0.0)
    )
   (send-super :init)
   (setq _ptpMode (round __ptpMode))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _r (float __r))
   self)
  (:ptpMode
   (&optional __ptpMode)
   (if __ptpMode (setq _ptpMode __ptpMode)) _ptpMode)
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
  (:serialization-length
   ()
   (+
    ;; uint8 _ptpMode
    1
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _r
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _ptpMode
       (write-byte _ptpMode s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _r
       (sys::poke _r (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _ptpMode
     (setq _ptpMode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _r
     (setq _r (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dobot::SetPTPCmdResponse
  :super ros::object
  :slots (_result _queuedCmdIndex ))

(defmethod dobot::SetPTPCmdResponse
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

(defclass dobot::SetPTPCmd
  :super ros::object
  :slots ())

(setf (get dobot::SetPTPCmd :md5sum-) "03a8de180cc7dcbaafb5daf5cd3d712e")
(setf (get dobot::SetPTPCmd :datatype-) "dobot/SetPTPCmd")
(setf (get dobot::SetPTPCmd :request) dobot::SetPTPCmdRequest)
(setf (get dobot::SetPTPCmd :response) dobot::SetPTPCmdResponse)

(defmethod dobot::SetPTPCmdRequest
  (:response () (instance dobot::SetPTPCmdResponse :init)))

(setf (get dobot::SetPTPCmdRequest :md5sum-) "03a8de180cc7dcbaafb5daf5cd3d712e")
(setf (get dobot::SetPTPCmdRequest :datatype-) "dobot/SetPTPCmdRequest")
(setf (get dobot::SetPTPCmdRequest :definition-)
      "uint8 ptpMode
float32 x
float32 y
float32 z
float32 r
---
int32 result
uint64 queuedCmdIndex

")

(setf (get dobot::SetPTPCmdResponse :md5sum-) "03a8de180cc7dcbaafb5daf5cd3d712e")
(setf (get dobot::SetPTPCmdResponse :datatype-) "dobot/SetPTPCmdResponse")
(setf (get dobot::SetPTPCmdResponse :definition-)
      "uint8 ptpMode
float32 x
float32 y
float32 z
float32 r
---
int32 result
uint64 queuedCmdIndex

")



(provide :dobot/SetPTPCmd "03a8de180cc7dcbaafb5daf5cd3d712e")


