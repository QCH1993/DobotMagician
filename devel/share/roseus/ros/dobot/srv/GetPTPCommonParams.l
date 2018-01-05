;; Auto-generated. Do not edit!


(when (boundp 'dobot::GetPTPCommonParams)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'GetPTPCommonParams (find-package "DOBOT")))
(unless (find-package "DOBOT::GETPTPCOMMONPARAMS")
  (make-package "DOBOT::GETPTPCOMMONPARAMS"))
(unless (find-package "DOBOT::GETPTPCOMMONPARAMSREQUEST")
  (make-package "DOBOT::GETPTPCOMMONPARAMSREQUEST"))
(unless (find-package "DOBOT::GETPTPCOMMONPARAMSRESPONSE")
  (make-package "DOBOT::GETPTPCOMMONPARAMSRESPONSE"))

(in-package "ROS")





(defclass dobot::GetPTPCommonParamsRequest
  :super ros::object
  :slots ())

(defmethod dobot::GetPTPCommonParamsRequest
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

(defclass dobot::GetPTPCommonParamsResponse
  :super ros::object
  :slots (_result _velocityRatio _accelerationRatio ))

(defmethod dobot::GetPTPCommonParamsResponse
  (:init
   (&key
    ((:result __result) 0)
    ((:velocityRatio __velocityRatio) 0.0)
    ((:accelerationRatio __accelerationRatio) 0.0)
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _velocityRatio (float __velocityRatio))
   (setq _accelerationRatio (float __accelerationRatio))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:velocityRatio
   (&optional __velocityRatio)
   (if __velocityRatio (setq _velocityRatio __velocityRatio)) _velocityRatio)
  (:accelerationRatio
   (&optional __accelerationRatio)
   (if __accelerationRatio (setq _accelerationRatio __accelerationRatio)) _accelerationRatio)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; float32 _velocityRatio
    4
    ;; float32 _accelerationRatio
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; float32 _velocityRatio
       (sys::poke _velocityRatio (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accelerationRatio
       (sys::poke _accelerationRatio (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _velocityRatio
     (setq _velocityRatio (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accelerationRatio
     (setq _accelerationRatio (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dobot::GetPTPCommonParams
  :super ros::object
  :slots ())

(setf (get dobot::GetPTPCommonParams :md5sum-) "ccb42558fae0625dedee5118e81add9a")
(setf (get dobot::GetPTPCommonParams :datatype-) "dobot/GetPTPCommonParams")
(setf (get dobot::GetPTPCommonParams :request) dobot::GetPTPCommonParamsRequest)
(setf (get dobot::GetPTPCommonParams :response) dobot::GetPTPCommonParamsResponse)

(defmethod dobot::GetPTPCommonParamsRequest
  (:response () (instance dobot::GetPTPCommonParamsResponse :init)))

(setf (get dobot::GetPTPCommonParamsRequest :md5sum-) "ccb42558fae0625dedee5118e81add9a")
(setf (get dobot::GetPTPCommonParamsRequest :datatype-) "dobot/GetPTPCommonParamsRequest")
(setf (get dobot::GetPTPCommonParamsRequest :definition-)
      "---
int32 result
float32 velocityRatio
float32 accelerationRatio

")

(setf (get dobot::GetPTPCommonParamsResponse :md5sum-) "ccb42558fae0625dedee5118e81add9a")
(setf (get dobot::GetPTPCommonParamsResponse :datatype-) "dobot/GetPTPCommonParamsResponse")
(setf (get dobot::GetPTPCommonParamsResponse :definition-)
      "---
int32 result
float32 velocityRatio
float32 accelerationRatio

")



(provide :dobot/GetPTPCommonParams "ccb42558fae0625dedee5118e81add9a")


