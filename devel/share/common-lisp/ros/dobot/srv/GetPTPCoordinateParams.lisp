; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude GetPTPCoordinateParams-request.msg.html

(cl:defclass <GetPTPCoordinateParams-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetPTPCoordinateParams-request (<GetPTPCoordinateParams-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPTPCoordinateParams-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPTPCoordinateParams-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetPTPCoordinateParams-request> is deprecated: use dobot-srv:GetPTPCoordinateParams-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPTPCoordinateParams-request>) ostream)
  "Serializes a message object of type '<GetPTPCoordinateParams-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPTPCoordinateParams-request>) istream)
  "Deserializes a message object of type '<GetPTPCoordinateParams-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPTPCoordinateParams-request>)))
  "Returns string type for a service object of type '<GetPTPCoordinateParams-request>"
  "dobot/GetPTPCoordinateParamsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPTPCoordinateParams-request)))
  "Returns string type for a service object of type 'GetPTPCoordinateParams-request"
  "dobot/GetPTPCoordinateParamsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPTPCoordinateParams-request>)))
  "Returns md5sum for a message object of type '<GetPTPCoordinateParams-request>"
  "886db9a7d126004f299ba6b6878cb966")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPTPCoordinateParams-request)))
  "Returns md5sum for a message object of type 'GetPTPCoordinateParams-request"
  "886db9a7d126004f299ba6b6878cb966")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPTPCoordinateParams-request>)))
  "Returns full string definition for message of type '<GetPTPCoordinateParams-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPTPCoordinateParams-request)))
  "Returns full string definition for message of type 'GetPTPCoordinateParams-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPTPCoordinateParams-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPTPCoordinateParams-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPTPCoordinateParams-request
))
;//! \htmlinclude GetPTPCoordinateParams-response.msg.html

(cl:defclass <GetPTPCoordinateParams-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (xyzVelocity
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
    :initform 0.0))
)

(cl:defclass GetPTPCoordinateParams-response (<GetPTPCoordinateParams-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPTPCoordinateParams-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPTPCoordinateParams-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetPTPCoordinateParams-response> is deprecated: use dobot-srv:GetPTPCoordinateParams-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetPTPCoordinateParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'xyzVelocity-val :lambda-list '(m))
(cl:defmethod xyzVelocity-val ((m <GetPTPCoordinateParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:xyzVelocity-val is deprecated.  Use dobot-srv:xyzVelocity instead.")
  (xyzVelocity m))

(cl:ensure-generic-function 'rVelocity-val :lambda-list '(m))
(cl:defmethod rVelocity-val ((m <GetPTPCoordinateParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:rVelocity-val is deprecated.  Use dobot-srv:rVelocity instead.")
  (rVelocity m))

(cl:ensure-generic-function 'xyzAcceleration-val :lambda-list '(m))
(cl:defmethod xyzAcceleration-val ((m <GetPTPCoordinateParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:xyzAcceleration-val is deprecated.  Use dobot-srv:xyzAcceleration instead.")
  (xyzAcceleration m))

(cl:ensure-generic-function 'rAcceleration-val :lambda-list '(m))
(cl:defmethod rAcceleration-val ((m <GetPTPCoordinateParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:rAcceleration-val is deprecated.  Use dobot-srv:rAcceleration instead.")
  (rAcceleration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPTPCoordinateParams-response>) ostream)
  "Serializes a message object of type '<GetPTPCoordinateParams-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPTPCoordinateParams-response>) istream)
  "Deserializes a message object of type '<GetPTPCoordinateParams-response>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPTPCoordinateParams-response>)))
  "Returns string type for a service object of type '<GetPTPCoordinateParams-response>"
  "dobot/GetPTPCoordinateParamsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPTPCoordinateParams-response)))
  "Returns string type for a service object of type 'GetPTPCoordinateParams-response"
  "dobot/GetPTPCoordinateParamsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPTPCoordinateParams-response>)))
  "Returns md5sum for a message object of type '<GetPTPCoordinateParams-response>"
  "886db9a7d126004f299ba6b6878cb966")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPTPCoordinateParams-response)))
  "Returns md5sum for a message object of type 'GetPTPCoordinateParams-response"
  "886db9a7d126004f299ba6b6878cb966")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPTPCoordinateParams-response>)))
  "Returns full string definition for message of type '<GetPTPCoordinateParams-response>"
  (cl:format cl:nil "int32 result~%float32 xyzVelocity~%float32 rVelocity~%float32 xyzAcceleration~%float32 rAcceleration~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPTPCoordinateParams-response)))
  "Returns full string definition for message of type 'GetPTPCoordinateParams-response"
  (cl:format cl:nil "int32 result~%float32 xyzVelocity~%float32 rVelocity~%float32 xyzAcceleration~%float32 rAcceleration~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPTPCoordinateParams-response>))
  (cl:+ 0
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPTPCoordinateParams-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPTPCoordinateParams-response
    (cl:cons ':result (result msg))
    (cl:cons ':xyzVelocity (xyzVelocity msg))
    (cl:cons ':rVelocity (rVelocity msg))
    (cl:cons ':xyzAcceleration (xyzAcceleration msg))
    (cl:cons ':rAcceleration (rAcceleration msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPTPCoordinateParams)))
  'GetPTPCoordinateParams-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPTPCoordinateParams)))
  'GetPTPCoordinateParams-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPTPCoordinateParams)))
  "Returns string type for a service object of type '<GetPTPCoordinateParams>"
  "dobot/GetPTPCoordinateParams")