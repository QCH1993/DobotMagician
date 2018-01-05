; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude GetJOGCommonParams-request.msg.html

(cl:defclass <GetJOGCommonParams-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetJOGCommonParams-request (<GetJOGCommonParams-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetJOGCommonParams-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetJOGCommonParams-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetJOGCommonParams-request> is deprecated: use dobot-srv:GetJOGCommonParams-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetJOGCommonParams-request>) ostream)
  "Serializes a message object of type '<GetJOGCommonParams-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetJOGCommonParams-request>) istream)
  "Deserializes a message object of type '<GetJOGCommonParams-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetJOGCommonParams-request>)))
  "Returns string type for a service object of type '<GetJOGCommonParams-request>"
  "dobot/GetJOGCommonParamsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetJOGCommonParams-request)))
  "Returns string type for a service object of type 'GetJOGCommonParams-request"
  "dobot/GetJOGCommonParamsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetJOGCommonParams-request>)))
  "Returns md5sum for a message object of type '<GetJOGCommonParams-request>"
  "ccb42558fae0625dedee5118e81add9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetJOGCommonParams-request)))
  "Returns md5sum for a message object of type 'GetJOGCommonParams-request"
  "ccb42558fae0625dedee5118e81add9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetJOGCommonParams-request>)))
  "Returns full string definition for message of type '<GetJOGCommonParams-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetJOGCommonParams-request)))
  "Returns full string definition for message of type 'GetJOGCommonParams-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetJOGCommonParams-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetJOGCommonParams-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetJOGCommonParams-request
))
;//! \htmlinclude GetJOGCommonParams-response.msg.html

(cl:defclass <GetJOGCommonParams-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (velocityRatio
    :reader velocityRatio
    :initarg :velocityRatio
    :type cl:float
    :initform 0.0)
   (accelerationRatio
    :reader accelerationRatio
    :initarg :accelerationRatio
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetJOGCommonParams-response (<GetJOGCommonParams-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetJOGCommonParams-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetJOGCommonParams-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetJOGCommonParams-response> is deprecated: use dobot-srv:GetJOGCommonParams-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetJOGCommonParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'velocityRatio-val :lambda-list '(m))
(cl:defmethod velocityRatio-val ((m <GetJOGCommonParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:velocityRatio-val is deprecated.  Use dobot-srv:velocityRatio instead.")
  (velocityRatio m))

(cl:ensure-generic-function 'accelerationRatio-val :lambda-list '(m))
(cl:defmethod accelerationRatio-val ((m <GetJOGCommonParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:accelerationRatio-val is deprecated.  Use dobot-srv:accelerationRatio instead.")
  (accelerationRatio m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetJOGCommonParams-response>) ostream)
  "Serializes a message object of type '<GetJOGCommonParams-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetJOGCommonParams-response>) istream)
  "Deserializes a message object of type '<GetJOGCommonParams-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetJOGCommonParams-response>)))
  "Returns string type for a service object of type '<GetJOGCommonParams-response>"
  "dobot/GetJOGCommonParamsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetJOGCommonParams-response)))
  "Returns string type for a service object of type 'GetJOGCommonParams-response"
  "dobot/GetJOGCommonParamsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetJOGCommonParams-response>)))
  "Returns md5sum for a message object of type '<GetJOGCommonParams-response>"
  "ccb42558fae0625dedee5118e81add9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetJOGCommonParams-response)))
  "Returns md5sum for a message object of type 'GetJOGCommonParams-response"
  "ccb42558fae0625dedee5118e81add9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetJOGCommonParams-response>)))
  "Returns full string definition for message of type '<GetJOGCommonParams-response>"
  (cl:format cl:nil "int32 result~%float32 velocityRatio~%float32 accelerationRatio~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetJOGCommonParams-response)))
  "Returns full string definition for message of type 'GetJOGCommonParams-response"
  (cl:format cl:nil "int32 result~%float32 velocityRatio~%float32 accelerationRatio~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetJOGCommonParams-response>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetJOGCommonParams-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetJOGCommonParams-response
    (cl:cons ':result (result msg))
    (cl:cons ':velocityRatio (velocityRatio msg))
    (cl:cons ':accelerationRatio (accelerationRatio msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetJOGCommonParams)))
  'GetJOGCommonParams-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetJOGCommonParams)))
  'GetJOGCommonParams-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetJOGCommonParams)))
  "Returns string type for a service object of type '<GetJOGCommonParams>"
  "dobot/GetJOGCommonParams")