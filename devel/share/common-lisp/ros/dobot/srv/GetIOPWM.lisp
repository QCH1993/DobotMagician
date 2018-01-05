; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude GetIOPWM-request.msg.html

(cl:defclass <GetIOPWM-request> (roslisp-msg-protocol:ros-message)
  ((address
    :reader address
    :initarg :address
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetIOPWM-request (<GetIOPWM-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetIOPWM-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetIOPWM-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetIOPWM-request> is deprecated: use dobot-srv:GetIOPWM-request instead.")))

(cl:ensure-generic-function 'address-val :lambda-list '(m))
(cl:defmethod address-val ((m <GetIOPWM-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:address-val is deprecated.  Use dobot-srv:address instead.")
  (address m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetIOPWM-request>) ostream)
  "Serializes a message object of type '<GetIOPWM-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'address)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetIOPWM-request>) istream)
  "Deserializes a message object of type '<GetIOPWM-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'address)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetIOPWM-request>)))
  "Returns string type for a service object of type '<GetIOPWM-request>"
  "dobot/GetIOPWMRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIOPWM-request)))
  "Returns string type for a service object of type 'GetIOPWM-request"
  "dobot/GetIOPWMRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetIOPWM-request>)))
  "Returns md5sum for a message object of type '<GetIOPWM-request>"
  "e74ebc842c028d734a6d61feb93c5a53")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetIOPWM-request)))
  "Returns md5sum for a message object of type 'GetIOPWM-request"
  "e74ebc842c028d734a6d61feb93c5a53")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetIOPWM-request>)))
  "Returns full string definition for message of type '<GetIOPWM-request>"
  (cl:format cl:nil "uint8 address~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetIOPWM-request)))
  "Returns full string definition for message of type 'GetIOPWM-request"
  (cl:format cl:nil "uint8 address~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetIOPWM-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetIOPWM-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetIOPWM-request
    (cl:cons ':address (address msg))
))
;//! \htmlinclude GetIOPWM-response.msg.html

(cl:defclass <GetIOPWM-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (frequency
    :reader frequency
    :initarg :frequency
    :type cl:float
    :initform 0.0)
   (dutyCycle
    :reader dutyCycle
    :initarg :dutyCycle
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetIOPWM-response (<GetIOPWM-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetIOPWM-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetIOPWM-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetIOPWM-response> is deprecated: use dobot-srv:GetIOPWM-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetIOPWM-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'frequency-val :lambda-list '(m))
(cl:defmethod frequency-val ((m <GetIOPWM-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:frequency-val is deprecated.  Use dobot-srv:frequency instead.")
  (frequency m))

(cl:ensure-generic-function 'dutyCycle-val :lambda-list '(m))
(cl:defmethod dutyCycle-val ((m <GetIOPWM-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:dutyCycle-val is deprecated.  Use dobot-srv:dutyCycle instead.")
  (dutyCycle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetIOPWM-response>) ostream)
  "Serializes a message object of type '<GetIOPWM-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'frequency))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dutyCycle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetIOPWM-response>) istream)
  "Deserializes a message object of type '<GetIOPWM-response>"
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
    (cl:setf (cl:slot-value msg 'frequency) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dutyCycle) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetIOPWM-response>)))
  "Returns string type for a service object of type '<GetIOPWM-response>"
  "dobot/GetIOPWMResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIOPWM-response)))
  "Returns string type for a service object of type 'GetIOPWM-response"
  "dobot/GetIOPWMResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetIOPWM-response>)))
  "Returns md5sum for a message object of type '<GetIOPWM-response>"
  "e74ebc842c028d734a6d61feb93c5a53")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetIOPWM-response)))
  "Returns md5sum for a message object of type 'GetIOPWM-response"
  "e74ebc842c028d734a6d61feb93c5a53")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetIOPWM-response>)))
  "Returns full string definition for message of type '<GetIOPWM-response>"
  (cl:format cl:nil "int32 result~%float32 frequency~%float32 dutyCycle~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetIOPWM-response)))
  "Returns full string definition for message of type 'GetIOPWM-response"
  (cl:format cl:nil "int32 result~%float32 frequency~%float32 dutyCycle~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetIOPWM-response>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetIOPWM-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetIOPWM-response
    (cl:cons ':result (result msg))
    (cl:cons ':frequency (frequency msg))
    (cl:cons ':dutyCycle (dutyCycle msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetIOPWM)))
  'GetIOPWM-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetIOPWM)))
  'GetIOPWM-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetIOPWM)))
  "Returns string type for a service object of type '<GetIOPWM>"
  "dobot/GetIOPWM")