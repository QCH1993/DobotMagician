; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude GetEndEffectorParams-request.msg.html

(cl:defclass <GetEndEffectorParams-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetEndEffectorParams-request (<GetEndEffectorParams-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetEndEffectorParams-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetEndEffectorParams-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetEndEffectorParams-request> is deprecated: use dobot-srv:GetEndEffectorParams-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetEndEffectorParams-request>) ostream)
  "Serializes a message object of type '<GetEndEffectorParams-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetEndEffectorParams-request>) istream)
  "Deserializes a message object of type '<GetEndEffectorParams-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetEndEffectorParams-request>)))
  "Returns string type for a service object of type '<GetEndEffectorParams-request>"
  "dobot/GetEndEffectorParamsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetEndEffectorParams-request)))
  "Returns string type for a service object of type 'GetEndEffectorParams-request"
  "dobot/GetEndEffectorParamsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetEndEffectorParams-request>)))
  "Returns md5sum for a message object of type '<GetEndEffectorParams-request>"
  "a07055f2964cf165e2fb447024254f9f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetEndEffectorParams-request)))
  "Returns md5sum for a message object of type 'GetEndEffectorParams-request"
  "a07055f2964cf165e2fb447024254f9f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetEndEffectorParams-request>)))
  "Returns full string definition for message of type '<GetEndEffectorParams-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetEndEffectorParams-request)))
  "Returns full string definition for message of type 'GetEndEffectorParams-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetEndEffectorParams-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetEndEffectorParams-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetEndEffectorParams-request
))
;//! \htmlinclude GetEndEffectorParams-response.msg.html

(cl:defclass <GetEndEffectorParams-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (xBias
    :reader xBias
    :initarg :xBias
    :type cl:float
    :initform 0.0)
   (yBias
    :reader yBias
    :initarg :yBias
    :type cl:float
    :initform 0.0)
   (zBias
    :reader zBias
    :initarg :zBias
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetEndEffectorParams-response (<GetEndEffectorParams-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetEndEffectorParams-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetEndEffectorParams-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetEndEffectorParams-response> is deprecated: use dobot-srv:GetEndEffectorParams-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetEndEffectorParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'xBias-val :lambda-list '(m))
(cl:defmethod xBias-val ((m <GetEndEffectorParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:xBias-val is deprecated.  Use dobot-srv:xBias instead.")
  (xBias m))

(cl:ensure-generic-function 'yBias-val :lambda-list '(m))
(cl:defmethod yBias-val ((m <GetEndEffectorParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:yBias-val is deprecated.  Use dobot-srv:yBias instead.")
  (yBias m))

(cl:ensure-generic-function 'zBias-val :lambda-list '(m))
(cl:defmethod zBias-val ((m <GetEndEffectorParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:zBias-val is deprecated.  Use dobot-srv:zBias instead.")
  (zBias m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetEndEffectorParams-response>) ostream)
  "Serializes a message object of type '<GetEndEffectorParams-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'xBias))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yBias))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'zBias))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetEndEffectorParams-response>) istream)
  "Deserializes a message object of type '<GetEndEffectorParams-response>"
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
    (cl:setf (cl:slot-value msg 'xBias) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yBias) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'zBias) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetEndEffectorParams-response>)))
  "Returns string type for a service object of type '<GetEndEffectorParams-response>"
  "dobot/GetEndEffectorParamsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetEndEffectorParams-response)))
  "Returns string type for a service object of type 'GetEndEffectorParams-response"
  "dobot/GetEndEffectorParamsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetEndEffectorParams-response>)))
  "Returns md5sum for a message object of type '<GetEndEffectorParams-response>"
  "a07055f2964cf165e2fb447024254f9f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetEndEffectorParams-response)))
  "Returns md5sum for a message object of type 'GetEndEffectorParams-response"
  "a07055f2964cf165e2fb447024254f9f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetEndEffectorParams-response>)))
  "Returns full string definition for message of type '<GetEndEffectorParams-response>"
  (cl:format cl:nil "int32 result~%float32 xBias~%float32 yBias~%float32 zBias~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetEndEffectorParams-response)))
  "Returns full string definition for message of type 'GetEndEffectorParams-response"
  (cl:format cl:nil "int32 result~%float32 xBias~%float32 yBias~%float32 zBias~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetEndEffectorParams-response>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetEndEffectorParams-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetEndEffectorParams-response
    (cl:cons ':result (result msg))
    (cl:cons ':xBias (xBias msg))
    (cl:cons ':yBias (yBias msg))
    (cl:cons ':zBias (zBias msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetEndEffectorParams)))
  'GetEndEffectorParams-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetEndEffectorParams)))
  'GetEndEffectorParams-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetEndEffectorParams)))
  "Returns string type for a service object of type '<GetEndEffectorParams>"
  "dobot/GetEndEffectorParams")