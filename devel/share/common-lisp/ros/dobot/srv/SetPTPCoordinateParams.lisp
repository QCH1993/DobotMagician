; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude SetPTPCoordinateParams-request.msg.html

(cl:defclass <SetPTPCoordinateParams-request> (roslisp-msg-protocol:ros-message)
  ((xyzVelocity
    :reader xyzVelocity
    :initarg :xyzVelocity
    :type cl:float
    :initform 0.0)
   (rVelocity
    :reader rVelocity
    :initarg :rVelocity
    :type cl:float
    :initform 0.0)
   (xyzAcceleration
    :reader xyzAcceleration
    :initarg :xyzAcceleration
    :type cl:float
    :initform 0.0)
   (rAcceleration
    :reader rAcceleration
    :initarg :rAcceleration
    :type cl:float
    :initform 0.0)
   (isQueued
    :reader isQueued
    :initarg :isQueued
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetPTPCoordinateParams-request (<SetPTPCoordinateParams-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPTPCoordinateParams-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPTPCoordinateParams-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetPTPCoordinateParams-request> is deprecated: use dobot-srv:SetPTPCoordinateParams-request instead.")))

(cl:ensure-generic-function 'xyzVelocity-val :lambda-list '(m))
(cl:defmethod xyzVelocity-val ((m <SetPTPCoordinateParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:xyzVelocity-val is deprecated.  Use dobot-srv:xyzVelocity instead.")
  (xyzVelocity m))

(cl:ensure-generic-function 'rVelocity-val :lambda-list '(m))
(cl:defmethod rVelocity-val ((m <SetPTPCoordinateParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:rVelocity-val is deprecated.  Use dobot-srv:rVelocity instead.")
  (rVelocity m))

(cl:ensure-generic-function 'xyzAcceleration-val :lambda-list '(m))
(cl:defmethod xyzAcceleration-val ((m <SetPTPCoordinateParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:xyzAcceleration-val is deprecated.  Use dobot-srv:xyzAcceleration instead.")
  (xyzAcceleration m))

(cl:ensure-generic-function 'rAcceleration-val :lambda-list '(m))
(cl:defmethod rAcceleration-val ((m <SetPTPCoordinateParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:rAcceleration-val is deprecated.  Use dobot-srv:rAcceleration instead.")
  (rAcceleration m))

(cl:ensure-generic-function 'isQueued-val :lambda-list '(m))
(cl:defmethod isQueued-val ((m <SetPTPCoordinateParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:isQueued-val is deprecated.  Use dobot-srv:isQueued instead.")
  (isQueued m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPTPCoordinateParams-request>) ostream)
  "Serializes a message object of type '<SetPTPCoordinateParams-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'xyzVelocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rVelocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'xyzAcceleration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rAcceleration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isQueued) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPTPCoordinateParams-request>) istream)
  "Deserializes a message object of type '<SetPTPCoordinateParams-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'xyzVelocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rVelocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'xyzAcceleration) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rAcceleration) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'isQueued) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPTPCoordinateParams-request>)))
  "Returns string type for a service object of type '<SetPTPCoordinateParams-request>"
  "dobot/SetPTPCoordinateParamsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPTPCoordinateParams-request)))
  "Returns string type for a service object of type 'SetPTPCoordinateParams-request"
  "dobot/SetPTPCoordinateParamsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPTPCoordinateParams-request>)))
  "Returns md5sum for a message object of type '<SetPTPCoordinateParams-request>"
  "667693b23f3c212883d158fa88cec8f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPTPCoordinateParams-request)))
  "Returns md5sum for a message object of type 'SetPTPCoordinateParams-request"
  "667693b23f3c212883d158fa88cec8f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPTPCoordinateParams-request>)))
  "Returns full string definition for message of type '<SetPTPCoordinateParams-request>"
  (cl:format cl:nil "float32 xyzVelocity~%float32 rVelocity~%float32 xyzAcceleration~%float32 rAcceleration~%bool isQueued~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPTPCoordinateParams-request)))
  "Returns full string definition for message of type 'SetPTPCoordinateParams-request"
  (cl:format cl:nil "float32 xyzVelocity~%float32 rVelocity~%float32 xyzAcceleration~%float32 rAcceleration~%bool isQueued~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPTPCoordinateParams-request>))
  (cl:+ 0
     4
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPTPCoordinateParams-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPTPCoordinateParams-request
    (cl:cons ':xyzVelocity (xyzVelocity msg))
    (cl:cons ':rVelocity (rVelocity msg))
    (cl:cons ':xyzAcceleration (xyzAcceleration msg))
    (cl:cons ':rAcceleration (rAcceleration msg))
    (cl:cons ':isQueued (isQueued msg))
))
;//! \htmlinclude SetPTPCoordinateParams-response.msg.html

(cl:defclass <SetPTPCoordinateParams-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (queuedCmdIndex
    :reader queuedCmdIndex
    :initarg :queuedCmdIndex
    :type cl:integer
    :initform 0))
)

(cl:defclass SetPTPCoordinateParams-response (<SetPTPCoordinateParams-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPTPCoordinateParams-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPTPCoordinateParams-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetPTPCoordinateParams-response> is deprecated: use dobot-srv:SetPTPCoordinateParams-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetPTPCoordinateParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'queuedCmdIndex-val :lambda-list '(m))
(cl:defmethod queuedCmdIndex-val ((m <SetPTPCoordinateParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:queuedCmdIndex-val is deprecated.  Use dobot-srv:queuedCmdIndex instead.")
  (queuedCmdIndex m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPTPCoordinateParams-response>) ostream)
  "Serializes a message object of type '<SetPTPCoordinateParams-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'queuedCmdIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'queuedCmdIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'queuedCmdIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'queuedCmdIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'queuedCmdIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'queuedCmdIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'queuedCmdIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'queuedCmdIndex)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPTPCoordinateParams-response>) istream)
  "Deserializes a message object of type '<SetPTPCoordinateParams-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'queuedCmdIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'queuedCmdIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'queuedCmdIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'queuedCmdIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'queuedCmdIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'queuedCmdIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'queuedCmdIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'queuedCmdIndex)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPTPCoordinateParams-response>)))
  "Returns string type for a service object of type '<SetPTPCoordinateParams-response>"
  "dobot/SetPTPCoordinateParamsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPTPCoordinateParams-response)))
  "Returns string type for a service object of type 'SetPTPCoordinateParams-response"
  "dobot/SetPTPCoordinateParamsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPTPCoordinateParams-response>)))
  "Returns md5sum for a message object of type '<SetPTPCoordinateParams-response>"
  "667693b23f3c212883d158fa88cec8f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPTPCoordinateParams-response)))
  "Returns md5sum for a message object of type 'SetPTPCoordinateParams-response"
  "667693b23f3c212883d158fa88cec8f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPTPCoordinateParams-response>)))
  "Returns full string definition for message of type '<SetPTPCoordinateParams-response>"
  (cl:format cl:nil "int32 result~%uint64 queuedCmdIndex~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPTPCoordinateParams-response)))
  "Returns full string definition for message of type 'SetPTPCoordinateParams-response"
  (cl:format cl:nil "int32 result~%uint64 queuedCmdIndex~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPTPCoordinateParams-response>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPTPCoordinateParams-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPTPCoordinateParams-response
    (cl:cons ':result (result msg))
    (cl:cons ':queuedCmdIndex (queuedCmdIndex msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetPTPCoordinateParams)))
  'SetPTPCoordinateParams-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetPTPCoordinateParams)))
  'SetPTPCoordinateParams-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPTPCoordinateParams)))
  "Returns string type for a service object of type '<SetPTPCoordinateParams>"
  "dobot/SetPTPCoordinateParams")