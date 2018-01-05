; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude GetPTPJumpParams-request.msg.html

(cl:defclass <GetPTPJumpParams-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetPTPJumpParams-request (<GetPTPJumpParams-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPTPJumpParams-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPTPJumpParams-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetPTPJumpParams-request> is deprecated: use dobot-srv:GetPTPJumpParams-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPTPJumpParams-request>) ostream)
  "Serializes a message object of type '<GetPTPJumpParams-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPTPJumpParams-request>) istream)
  "Deserializes a message object of type '<GetPTPJumpParams-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPTPJumpParams-request>)))
  "Returns string type for a service object of type '<GetPTPJumpParams-request>"
  "dobot/GetPTPJumpParamsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPTPJumpParams-request)))
  "Returns string type for a service object of type 'GetPTPJumpParams-request"
  "dobot/GetPTPJumpParamsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPTPJumpParams-request>)))
  "Returns md5sum for a message object of type '<GetPTPJumpParams-request>"
  "c789ca108051f9c81e48ec0ed44d3ab7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPTPJumpParams-request)))
  "Returns md5sum for a message object of type 'GetPTPJumpParams-request"
  "c789ca108051f9c81e48ec0ed44d3ab7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPTPJumpParams-request>)))
  "Returns full string definition for message of type '<GetPTPJumpParams-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPTPJumpParams-request)))
  "Returns full string definition for message of type 'GetPTPJumpParams-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPTPJumpParams-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPTPJumpParams-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPTPJumpParams-request
))
;//! \htmlinclude GetPTPJumpParams-response.msg.html

(cl:defclass <GetPTPJumpParams-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (jumpHeight
    :reader jumpHeight
    :initarg :jumpHeight
    :type cl:float
    :initform 0.0)
   (zLimit
    :reader zLimit
    :initarg :zLimit
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetPTPJumpParams-response (<GetPTPJumpParams-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPTPJumpParams-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPTPJumpParams-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetPTPJumpParams-response> is deprecated: use dobot-srv:GetPTPJumpParams-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetPTPJumpParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'jumpHeight-val :lambda-list '(m))
(cl:defmethod jumpHeight-val ((m <GetPTPJumpParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:jumpHeight-val is deprecated.  Use dobot-srv:jumpHeight instead.")
  (jumpHeight m))

(cl:ensure-generic-function 'zLimit-val :lambda-list '(m))
(cl:defmethod zLimit-val ((m <GetPTPJumpParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:zLimit-val is deprecated.  Use dobot-srv:zLimit instead.")
  (zLimit m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPTPJumpParams-response>) ostream)
  "Serializes a message object of type '<GetPTPJumpParams-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'jumpHeight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'zLimit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPTPJumpParams-response>) istream)
  "Deserializes a message object of type '<GetPTPJumpParams-response>"
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
    (cl:setf (cl:slot-value msg 'jumpHeight) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'zLimit) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPTPJumpParams-response>)))
  "Returns string type for a service object of type '<GetPTPJumpParams-response>"
  "dobot/GetPTPJumpParamsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPTPJumpParams-response)))
  "Returns string type for a service object of type 'GetPTPJumpParams-response"
  "dobot/GetPTPJumpParamsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPTPJumpParams-response>)))
  "Returns md5sum for a message object of type '<GetPTPJumpParams-response>"
  "c789ca108051f9c81e48ec0ed44d3ab7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPTPJumpParams-response)))
  "Returns md5sum for a message object of type 'GetPTPJumpParams-response"
  "c789ca108051f9c81e48ec0ed44d3ab7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPTPJumpParams-response>)))
  "Returns full string definition for message of type '<GetPTPJumpParams-response>"
  (cl:format cl:nil "int32 result~%float32 jumpHeight~%float32 zLimit~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPTPJumpParams-response)))
  "Returns full string definition for message of type 'GetPTPJumpParams-response"
  (cl:format cl:nil "int32 result~%float32 jumpHeight~%float32 zLimit~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPTPJumpParams-response>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPTPJumpParams-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPTPJumpParams-response
    (cl:cons ':result (result msg))
    (cl:cons ':jumpHeight (jumpHeight msg))
    (cl:cons ':zLimit (zLimit msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPTPJumpParams)))
  'GetPTPJumpParams-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPTPJumpParams)))
  'GetPTPJumpParams-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPTPJumpParams)))
  "Returns string type for a service object of type '<GetPTPJumpParams>"
  "dobot/GetPTPJumpParams")