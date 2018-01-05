; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude SetJOGCommonParams-request.msg.html

(cl:defclass <SetJOGCommonParams-request> (roslisp-msg-protocol:ros-message)
  ((velocityRatio
    :reader velocityRatio
    :initarg :velocityRatio
    :type cl:float
    :initform 0.0)
   (accelerationRatio
    :reader accelerationRatio
    :initarg :accelerationRatio
    :type cl:float
    :initform 0.0)
   (isQueued
    :reader isQueued
    :initarg :isQueued
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetJOGCommonParams-request (<SetJOGCommonParams-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetJOGCommonParams-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetJOGCommonParams-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetJOGCommonParams-request> is deprecated: use dobot-srv:SetJOGCommonParams-request instead.")))

(cl:ensure-generic-function 'velocityRatio-val :lambda-list '(m))
(cl:defmethod velocityRatio-val ((m <SetJOGCommonParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:velocityRatio-val is deprecated.  Use dobot-srv:velocityRatio instead.")
  (velocityRatio m))

(cl:ensure-generic-function 'accelerationRatio-val :lambda-list '(m))
(cl:defmethod accelerationRatio-val ((m <SetJOGCommonParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:accelerationRatio-val is deprecated.  Use dobot-srv:accelerationRatio instead.")
  (accelerationRatio m))

(cl:ensure-generic-function 'isQueued-val :lambda-list '(m))
(cl:defmethod isQueued-val ((m <SetJOGCommonParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:isQueued-val is deprecated.  Use dobot-srv:isQueued instead.")
  (isQueued m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetJOGCommonParams-request>) ostream)
  "Serializes a message object of type '<SetJOGCommonParams-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocityRatio))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accelerationRatio))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isQueued) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetJOGCommonParams-request>) istream)
  "Deserializes a message object of type '<SetJOGCommonParams-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocityRatio) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accelerationRatio) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'isQueued) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetJOGCommonParams-request>)))
  "Returns string type for a service object of type '<SetJOGCommonParams-request>"
  "dobot/SetJOGCommonParamsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJOGCommonParams-request)))
  "Returns string type for a service object of type 'SetJOGCommonParams-request"
  "dobot/SetJOGCommonParamsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetJOGCommonParams-request>)))
  "Returns md5sum for a message object of type '<SetJOGCommonParams-request>"
  "07fac5c7832f03b11ac295e63e130ee0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetJOGCommonParams-request)))
  "Returns md5sum for a message object of type 'SetJOGCommonParams-request"
  "07fac5c7832f03b11ac295e63e130ee0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetJOGCommonParams-request>)))
  "Returns full string definition for message of type '<SetJOGCommonParams-request>"
  (cl:format cl:nil "float32 velocityRatio~%float32 accelerationRatio~%bool isQueued~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetJOGCommonParams-request)))
  "Returns full string definition for message of type 'SetJOGCommonParams-request"
  (cl:format cl:nil "float32 velocityRatio~%float32 accelerationRatio~%bool isQueued~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetJOGCommonParams-request>))
  (cl:+ 0
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetJOGCommonParams-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetJOGCommonParams-request
    (cl:cons ':velocityRatio (velocityRatio msg))
    (cl:cons ':accelerationRatio (accelerationRatio msg))
    (cl:cons ':isQueued (isQueued msg))
))
;//! \htmlinclude SetJOGCommonParams-response.msg.html

(cl:defclass <SetJOGCommonParams-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetJOGCommonParams-response (<SetJOGCommonParams-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetJOGCommonParams-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetJOGCommonParams-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetJOGCommonParams-response> is deprecated: use dobot-srv:SetJOGCommonParams-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetJOGCommonParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'queuedCmdIndex-val :lambda-list '(m))
(cl:defmethod queuedCmdIndex-val ((m <SetJOGCommonParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:queuedCmdIndex-val is deprecated.  Use dobot-srv:queuedCmdIndex instead.")
  (queuedCmdIndex m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetJOGCommonParams-response>) ostream)
  "Serializes a message object of type '<SetJOGCommonParams-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetJOGCommonParams-response>) istream)
  "Deserializes a message object of type '<SetJOGCommonParams-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetJOGCommonParams-response>)))
  "Returns string type for a service object of type '<SetJOGCommonParams-response>"
  "dobot/SetJOGCommonParamsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJOGCommonParams-response)))
  "Returns string type for a service object of type 'SetJOGCommonParams-response"
  "dobot/SetJOGCommonParamsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetJOGCommonParams-response>)))
  "Returns md5sum for a message object of type '<SetJOGCommonParams-response>"
  "07fac5c7832f03b11ac295e63e130ee0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetJOGCommonParams-response)))
  "Returns md5sum for a message object of type 'SetJOGCommonParams-response"
  "07fac5c7832f03b11ac295e63e130ee0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetJOGCommonParams-response>)))
  "Returns full string definition for message of type '<SetJOGCommonParams-response>"
  (cl:format cl:nil "int32 result~%uint64 queuedCmdIndex~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetJOGCommonParams-response)))
  "Returns full string definition for message of type 'SetJOGCommonParams-response"
  (cl:format cl:nil "int32 result~%uint64 queuedCmdIndex~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetJOGCommonParams-response>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetJOGCommonParams-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetJOGCommonParams-response
    (cl:cons ':result (result msg))
    (cl:cons ':queuedCmdIndex (queuedCmdIndex msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetJOGCommonParams)))
  'SetJOGCommonParams-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetJOGCommonParams)))
  'SetJOGCommonParams-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJOGCommonParams)))
  "Returns string type for a service object of type '<SetJOGCommonParams>"
  "dobot/SetJOGCommonParams")