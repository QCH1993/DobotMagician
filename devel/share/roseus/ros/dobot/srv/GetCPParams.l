;; Auto-generated. Do not edit!


(when (boundp 'dobot::GetCPParams)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'GetCPParams (find-package "DOBOT")))
(unless (find-package "DOBOT::GETCPPARAMS")
  (make-package "DOBOT::GETCPPARAMS"))
(unless (find-package "DOBOT::GETCPPARAMSREQUEST")
  (make-package "DOBOT::GETCPPARAMSREQUEST"))
(unless (find-package "DOBOT::GETCPPARAMSRESPONSE")
  (make-package "DOBOT::GETCPPARAMSRESPONSE"))

(in-package "ROS")





(defclass dobot::GetCPParamsRequest
  :super ros::object
  :slots ())

(defmethod dobot::GetCPParamsRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass dobot::GetCPParamsResponse
  :super ros::object
  :slots (_result _planAcc _junctionVel _acc _realTimeTrack ))

(defmethod dobot::GetCPParamsResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:planAcc __planAcc) 0.0)
    ((:junctionVel __junctionVel) 0.0)
    ((:acc __acc) 0.0)
    ((:realTimeTrack __realTimeTrack) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _planAcc (float __planAcc))
   (setq _junctionVel (float __junctionVel))
   (setq _acc (float __acc))
   (setq _realTimeTrack (round __realTimeTrack))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:planAcc
   (&optional __planAcc)
   (if __planAcc (setq _planAcc __planAcc)) _planAcc)
  (:junctionVel
   (&optional __junctionVel)
   (if __junctionVel (setq _junctionVel __junctionVel)) _junctionVel)
  (:acc
   (&optional __acc)
   (if __acc (setq _acc __acc)) _acc)
  (:realTimeTrack
   (&optional __realTimeTrack)
   (if __realTimeTrack (setq _realTimeTrack __realTimeTrack)) _realTimeTrack)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; float32 _planAcc
    4
    ;; float32 _junctionVel
    4
    ;; float32 _acc
    4
    ;; uint8 _realTimeTrack
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; float32 _planAcc
       (sys::poke _planAcc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _junctionVel
       (sys::poke _junctionVel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _acc
       (sys::poke _acc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _realTimeTrack
       (write-byte _realTimeTrack s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _planAcc
     (setq _planAcc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _junctionVel
     (setq _junctionVel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _acc
     (setq _acc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _realTimeTrack
     (setq _realTimeTrack (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dobot::GetCPParams
  :super ros::object
  :slots ())

(setf (get dobot::GetCPParams :md5sum-) "85dff81a44afbb98d15e48705b4ea806")
(setf (get dobot::GetCPParams :datatype-) "dobot/GetCPParams")
(setf (get dobot::GetCPParams :request) dobot::GetCPParamsRequest)
(setf (get dobot::GetCPParams :response) dobot::GetCPParamsResponse)

(defmethod dobot::GetCPParamsRequest
  (:response () (instance dobot::GetCPParamsResponse :init)))

(setf (get dobot::GetCPParamsRequest :md5sum-) "85dff81a44afbb98d15e48705b4ea806")
(setf (get dobot::GetCPParamsRequest :datatype-) "dobot/GetCPParamsRequest")
(setf (get dobot::GetCPParamsRequest :definition-)
      "---
int32 result
float32 planAcc
float32 junctionVel
float32 acc
uint8 realTimeTrack

")

(setf (get dobot::GetCPParamsResponse :md5sum-) "85dff81a44afbb98d15e48705b4ea806")
(setf (get dobot::GetCPParamsResponse :datatype-) "dobot/GetCPParamsResponse")
(setf (get dobot::GetCPParamsResponse :definition-)
      "---
int32 result
float32 planAcc
float32 junctionVel
float32 acc
uint8 realTimeTrack

")



(provide :dobot/GetCPParams "85dff81a44afbb98d15e48705b4ea806")


