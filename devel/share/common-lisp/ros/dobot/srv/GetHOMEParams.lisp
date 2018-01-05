; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude GetHOMEParams-request.msg.html

(cl:defclass <GetHOMEParams-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetHOMEParams-request (<GetHOMEParams-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetHOMEParams-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetHOMEParams-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetHOMEParams-request> is deprecated: use dobot-srv:GetHOMEParams-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetHOMEParams-request>) ostream)
  "Serializes a message object of type '<GetHOMEParams-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetHOMEParams-request>) istream)
  "Deserializes a message object of type '<GetHOMEParams-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetHOMEParams-request>)))
  "Returns string type for a service object of type '<GetHOMEParams-request>"
  "dobot/GetHOMEParamsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetHOMEParams-request)))
  "Returns string type for a service object of type 'GetHOMEParams-request"
  "dobot/GetHOMEParamsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetHOMEParams-request>)))
  "Returns md5sum for a message object of type '<GetHOMEParams-request>"
  "faee91dfb5143975dd17cc14a8879155")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetHOMEParams-request)))
  "Returns md5sum for a message object of type 'GetHOMEParams-request"
  "faee91dfb5143975dd17cc14a8879155")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetHOMEParams-request>)))
  "Returns full string definition for message of type '<GetHOMEParams-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetHOMEParams-request)))
  "Returns full string definition for message of type 'GetHOMEParams-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetHOMEParams-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetHOMEParams-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetHOMEParams-request
))
;//! \htmlinclude GetHOMEParams-response.msg.html

(cl:defclass <GetHOMEParams-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (r
    :reader r
    :initarg :r
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetHOMEParams-response (<GetHOMEParams-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetHOMEParams-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetHOMEParams-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetHOMEParams-response> is deprecated: use dobot-srv:GetHOMEParams-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetHOMEParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <GetHOMEParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:x-val is deprecated.  Use dobot-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <GetHOMEParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:y-val is deprecated.  Use dobot-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <GetHOMEParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:z-val is deprecated.  Use dobot-srv:z instead.")
  (z m))

(cl:ensure-generic-function 'r-val :lambda-list '(m))
(cl:defmethod r-val ((m <GetHOMEParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:r-val is deprecated.  Use dobot-srv:r instead.")
  (r m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetHOMEParams-response>) ostream)
  "Serializes a message object of type '<GetHOMEParams-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetHOMEParams-response>) istream)
  "Deserializes a message object of type '<GetHOMEParams-response>"
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
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'r) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetHOMEParams-response>)))
  "Returns string type for a service object of type '<GetHOMEParams-response>"
  "dobot/GetHOMEParamsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetHOMEParams-response)))
  "Returns string type for a service object of type 'GetHOMEParams-response"
  "dobot/GetHOMEParamsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetHOMEParams-response>)))
  "Returns md5sum for a message object of type '<GetHOMEParams-response>"
  "faee91dfb5143975dd17cc14a8879155")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetHOMEParams-response)))
  "Returns md5sum for a message object of type 'GetHOMEParams-response"
  "faee91dfb5143975dd17cc14a8879155")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetHOMEParams-response>)))
  "Returns full string definition for message of type '<GetHOMEParams-response>"
  (cl:format cl:nil "int32 result~%float32 x~%float32 y~%float32 z~%float32 r~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetHOMEParams-response)))
  "Returns full string definition for message of type 'GetHOMEParams-response"
  (cl:format cl:nil "int32 result~%float32 x~%float32 y~%float32 z~%float32 r~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetHOMEParams-response>))
  (cl:+ 0
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetHOMEParams-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetHOMEParams-response
    (cl:cons ':result (result msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':r (r msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetHOMEParams)))
  'GetHOMEParams-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetHOMEParams)))
  'GetHOMEParams-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetHOMEParams)))
  "Returns string type for a service object of type '<GetHOMEParams>"
  "dobot/GetHOMEParams")