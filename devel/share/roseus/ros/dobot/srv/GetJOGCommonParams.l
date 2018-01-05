;; Auto-generated. Do not edit!


(when (boundp 'dobot::GetJOGCommonParams)
  (if (not (find-package "DOBOT"))
    (make-package "DOBOT"))
  (shadow 'GetJOGCommonParams (find-package "DOBOT")))
(unless (find-package "DOBOT::GETJOGCOMMONPARAMS")
  (make-package "DOBOT::GETJOGCOMMONPARAMS"))
(unless (find-package "DOBOT::GETJOGCOMMONPARAMSREQUEST")
  (make-package "DOBOT::GETJOGCOMMONPARAMSREQUEST"))
(unless (find-package "DOBOT::GETJOGCOMMONPARAMSRESPONSE")
  (make-package "DOBOT::GETJOGCOMMONPARAMSRESPONSE"))

(in-package "ROS")





(defclass dobot::GetJOGCommonParamsRequest
  :super ros::object
  :slots ())

(defmethod dobot::GetJOGCommonParamsRequest
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

(defclass dobot::GetJOGCommonParamsResponse
  :super ros::object
  :slots (_result _velocityRatio _accelerationRatio ))

(defmethod dobot::GetJOGCommonParamsResponse
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

(defclass dobot::GetJOGCommonParams
  :super ros::object
  :slots ())

(setf (get dobot::GetJOGCommonParams :md5sum-) "ccb42558fae0625dedee5118e81add9a")
(setf (get dobot::GetJOGCommonParams :datatype-) "dobot/GetJOGCommonParams")
(setf (get dobot::GetJOGCommonParams :request) dobot::GetJOGCommonParamsRequest)
(setf (get dobot::GetJOGCommonParams :response) dobot::GetJOGCommonParamsResponse)

(defmethod dobot::GetJOGCommonParamsRequest
  (:response () (instance dobot::GetJOGCommonParamsResponse :init)))

(setf (get dobot::GetJOGCommonParamsRequest :md5sum-) "ccb42558fae0625dedee5118e81add9a")
(setf (get dobot::GetJOGCommonParamsRequest :datatype-) "dobot/GetJOGCommonParamsRequest")
(setf (get dobot::GetJOGCommonParamsRequest :definition-)
      "---
int32 result
float32 velocityRatio
float32 accelerationRatio

")

(setf (get dobot::GetJOGCommonParamsResponse :md5sum-) "ccb42558fae0625dedee5118e81add9a")
(setf (get dobot::GetJOGCommonParamsResponse :datatype-) "dobot/GetJOGCommonParamsResponse")
(setf (get dobot::GetJOGCommonParamsResponse :definition-)
      "---
int32 result
float32 velocityRatio
float32 accelerationRatio

")



(provide :dobot/GetJOGCommonParams "ccb42558fae0625dedee5118e81add9a")


