;; Auto-generated. Do not edit!


(when (boundp 'dobot::GetEndEffectorSuctionCup)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'GetEndEffectorSuctionCup (find-package "DOBOT")))
(unless (find-package "DOBOT::GETENDEFFECTORSUCTIONCUP")
  (make-package "DOBOT::GETENDEFFECTORSUCTIONCUP"))
(unless (find-package "DOBOT::GETENDEFFECTORSUCTIONCUPREQUEST")
  (make-package "DOBOT::GETENDEFFECTORSUCTIONCUPREQUEST"))
(unless (find-package "DOBOT::GETENDEFFECTORSUCTIONCUPRESPONSE")
  (make-package "DOBOT::GETENDEFFECTORSUCTIONCUPRESPONSE"))

(in-package "ROS")





(defclass dobot::GetEndEffectorSuctionCupRequest
  :super ros::object
  :slots ())

(defmethod dobot::GetEndEffectorSuctionCupRequest
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

(defclass dobot::GetEndEffectorSuctionCupResponse
  :super ros::object
  :slots (_result _enableCtrl _suck ))

(defmethod dobot::GetEndEffectorSuctionCupResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:enableCtrl __enableCtrl) 0)
    ((:suck __suck) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _enableCtrl (round __enableCtrl))
   (setq _suck (round __suck))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:enableCtrl
   (&optional __enableCtrl)
   (if __enableCtrl (setq _enableCtrl __enableCtrl)) _enableCtrl)
  (:suck
   (&optional __suck)
   (if __suck (setq _suck __suck)) _suck)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; uint8 _enableCtrl
    1
    ;; uint8 _suck
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; uint8 _enableCtrl
       (write-byte _enableCtrl s)
     ;; uint8 _suck
       (write-byte _suck s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _enableCtrl
     (setq _enableCtrl (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _suck
     (setq _suck (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dobot::GetEndEffectorSuctionCup
  :super ros::object
  :slots ())

(setf (get dobot::GetEndEffectorSuctionCup :md5sum-) "4855d73076b6df7c6c4785878f4cef46")
(setf (get dobot::GetEndEffectorSuctionCup :datatype-) "dobot/GetEndEffectorSuctionCup")
(setf (get dobot::GetEndEffectorSuctionCup :request) dobot::GetEndEffectorSuctionCupRequest)
(setf (get dobot::GetEndEffectorSuctionCup :response) dobot::GetEndEffectorSuctionCupResponse)

(defmethod dobot::GetEndEffectorSuctionCupRequest
  (:response () (instance dobot::GetEndEffectorSuctionCupResponse :init)))

(setf (get dobot::GetEndEffectorSuctionCupRequest :md5sum-) "4855d73076b6df7c6c4785878f4cef46")
(setf (get dobot::GetEndEffectorSuctionCupRequest :datatype-) "dobot/GetEndEffectorSuctionCupRequest")
(setf (get dobot::GetEndEffectorSuctionCupRequest :definition-)
      "---
int32 result
uint8 enableCtrl
uint8 suck

")

(setf (get dobot::GetEndEffectorSuctionCupResponse :md5sum-) "4855d73076b6df7c6c4785878f4cef46")
(setf (get dobot::GetEndEffectorSuctionCupResponse :datatype-) "dobot/GetEndEffectorSuctionCupResponse")
(setf (get dobot::GetEndEffectorSuctionCupResponse :definition-)
      "---
int32 result
uint8 enableCtrl
uint8 suck

")



(provide :dobot/GetEndEffectorSuctionCup "4855d73076b6df7c6c4785878f4cef46")


