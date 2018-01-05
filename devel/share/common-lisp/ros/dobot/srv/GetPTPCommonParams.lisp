; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude GetPTPCommonParams-request.msg.html

(cl:defclass <GetPTPCommonParams-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetPTPCommonParams-request (<GetPTPCommonParams-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPTPCommonParams-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPTPCommonParams-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetPTPCommonParams-request> is deprecated: use dobot-srv:GetPTPCommonParams-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPTPCommonParams-request>) ostream)
  "Serializes a message object of type '<GetPTPCommonParams-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPTPCommonParams-request>) istream)
  "Deserializes a message object of type '<GetPTPCommonParams-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPTPCommonParams-request>)))
  "Returns string type for a service object of type '<GetPTPCommonParams-request>"
  "dobot/GetPTPCommonParamsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPTPCommonParams-request)))
  "Returns string type for a service object of type 'GetPTPCommonParams-request"
  "dobot/GetPTPCommonParamsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPTPCommonParams-request>)))
  "Returns md5sum for a message object of type '<GetPTPCommonParams-request>"
  "ccb42558fae0625dedee5118e81add9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPTPCommonParams-request)))
  "Returns md5sum for a message object of type 'GetPTPCommonParams-request"
  "ccb42558fae0625dedee5118e81add9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPTPCommonParams-request>)))
  "Returns full string definition for message of type '<GetPTPCommonParams-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPTPCommonParams-request)))
  "Returns full string definition for message of type 'GetPTPCommonParams-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPTPCommonParams-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPTPCommonParams-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPTPCommonParams-request
))
;//! \htmlinclude GetPTPCommonParams-response.msg.html

(cl:defclass <GetPTPCommonParams-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass GetPTPCommonParams-response (<GetPTPCommonParams-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPTPCommonParams-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPTPCommonParams-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetPTPCommonParams-response> is deprecated: use dobot-srv:GetPTPCommonParams-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetPTPCommonParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'velocityRatio-val :lambda-list '(m))
(cl:defmethod velocityRatio-val ((m <GetPTPCommonParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:velocityRatio-val is deprecated.  Use dobot-srv:velocityRatio instead.")
  (velocityRatio m))

(cl:ensure-generic-function 'accelerationRatio-val :lambda-list '(m))
(cl:defmethod accelerationRatio-val ((m <GetPTPCommonParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:accelerationRatio-val is deprecated.  Use dobot-srv:accelerationRatio instead.")
  (accelerationRatio m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPTPCommonParams-response>) ostream)
  "Serializes a message object of type '<GetPTPCommonParams-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPTPCommonParams-response>) istream)
  "Deserializes a message object of type '<GetPTPCommonParams-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPTPCommonParams-response>)))
  "Returns string type for a service object of type '<GetPTPCommonParams-response>"
  "dobot/GetPTPCommonParamsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPTPCommonParams-response)))
  "Returns string type for a service object of type 'GetPTPCommonParams-response"
  "dobot/GetPTPCommonParamsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPTPCommonParams-response>)))
  "Returns md5sum for a message object of type '<GetPTPCommonParams-response>"
  "ccb42558fae0625dedee5118e81add9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPTPCommonParams-response)))
  "Returns md5sum for a message object of type 'GetPTPCommonParams-response"
  "ccb42558fae0625dedee5118e81add9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPTPCommonParams-response>)))
  "Returns full string definition for message of type '<GetPTPCommonParams-response>"
  (cl:format cl:nil "int32 result~%float32 velocityRatio~%float32 accelerationRatio~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPTPCommonParams-response)))
  "Returns full string definition for message of type 'GetPTPCommonParams-response"
  (cl:format cl:nil "int32 result~%float32 velocityRatio~%float32 accelerationRatio~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPTPCommonParams-response>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPTPCommonParams-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPTPCommonParams-response
    (cl:cons ':result (result msg))
    (cl:cons ':velocityRatio (velocityRatio msg))
    (cl:cons ':accelerationRatio (accelerationRatio msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPTPCommonParams)))
  'GetPTPCommonParams-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPTPCommonParams)))
  'GetPTPCommonParams-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPTPCommonParams)))
  "Returns string type for a service object of type '<GetPTPCommonParams>"
  "dobot/GetPTPCommonParams")