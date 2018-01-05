; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude SetEndEffectorParams-request.msg.html

(cl:defclass <SetEndEffectorParams-request> (roslisp-msg-protocol:ros-message)
  ((xBias
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
    :initform 0.0)
   (isQueued
    :reader isQueued
    :initarg :isQueued
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetEndEffectorParams-request (<SetEndEffectorParams-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetEndEffectorParams-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetEndEffectorParams-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetEndEffectorParams-request> is deprecated: use dobot-srv:SetEndEffectorParams-request instead.")))

(cl:ensure-generic-function 'xBias-val :lambda-list '(m))
(cl:defmethod xBias-val ((m <SetEndEffectorParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:xBias-val is deprecated.  Use dobot-srv:xBias instead.")
  (xBias m))

(cl:ensure-generic-function 'yBias-val :lambda-list '(m))
(cl:defmethod yBias-val ((m <SetEndEffectorParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:yBias-val is deprecated.  Use dobot-srv:yBias instead.")
  (yBias m))

(cl:ensure-generic-function 'zBias-val :lambda-list '(m))
(cl:defmethod zBias-val ((m <SetEndEffectorParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:zBias-val is deprecated.  Use dobot-srv:zBias instead.")
  (zBias m))

(cl:ensure-generic-function 'isQueued-val :lambda-list '(m))
(cl:defmethod isQueued-val ((m <SetEndEffectorParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:isQueued-val is deprecated.  Use dobot-srv:isQueued instead.")
  (isQueued m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetEndEffectorParams-request>) ostream)
  "Serializes a message object of type '<SetEndEffectorParams-request>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isQueued) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetEndEffectorParams-request>) istream)
  "Deserializes a message object of type '<SetEndEffectorParams-request>"
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
    (cl:setf (cl:slot-value msg 'isQueued) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetEndEffectorParams-request>)))
  "Returns string type for a service object of type '<SetEndEffectorParams-request>"
  "dobot/SetEndEffectorParamsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetEndEffectorParams-request)))
  "Returns string type for a service object of type 'SetEndEffectorParams-request"
  "dobot/SetEndEffectorParamsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetEndEffectorParams-request>)))
  "Returns md5sum for a message object of type '<SetEndEffectorParams-request>"
  "65e2589a98b434e9e347ef66c32e4f96")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetEndEffectorParams-request)))
  "Returns md5sum for a message object of type 'SetEndEffectorParams-request"
  "65e2589a98b434e9e347ef66c32e4f96")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetEndEffectorParams-request>)))
  "Returns full string definition for message of type '<SetEndEffectorParams-request>"
  (cl:format cl:nil "float32 xBias~%float32 yBias~%float32 zBias~%bool isQueued~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetEndEffectorParams-request)))
  "Returns full string definition for message of type 'SetEndEffectorParams-request"
  (cl:format cl:nil "float32 xBias~%float32 yBias~%float32 zBias~%bool isQueued~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetEndEffectorParams-request>))
  (cl:+ 0
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetEndEffectorParams-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetEndEffectorParams-request
    (cl:cons ':xBias (xBias msg))
    (cl:cons ':yBias (yBias msg))
    (cl:cons ':zBias (zBias msg))
    (cl:cons ':isQueued (isQueued msg))
))
;//! \htmlinclude SetEndEffectorParams-response.msg.html

(cl:defclass <SetEndEffectorParams-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetEndEffectorParams-response (<SetEndEffectorParams-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetEndEffectorParams-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetEndEffectorParams-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetEndEffectorParams-response> is deprecated: use dobot-srv:SetEndEffectorParams-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetEndEffectorParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'queuedCmdIndex-val :lambda-list '(m))
(cl:defmethod queuedCmdIndex-val ((m <SetEndEffectorParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:queuedCmdIndex-val is deprecated.  Use dobot-srv:queuedCmdIndex instead.")
  (queuedCmdIndex m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetEndEffectorParams-response>) ostream)
  "Serializes a message object of type '<SetEndEffectorParams-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetEndEffectorParams-response>) istream)
  "Deserializes a message object of type '<SetEndEffectorParams-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetEndEffectorParams-response>)))
  "Returns string type for a service object of type '<SetEndEffectorParams-response>"
  "dobot/SetEndEffectorParamsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetEndEffectorParams-response)))
  "Returns string type for a service object of type 'SetEndEffectorParams-response"
  "dobot/SetEndEffectorParamsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetEndEffectorParams-response>)))
  "Returns md5sum for a message object of type '<SetEndEffectorParams-response>"
  "65e2589a98b434e9e347ef66c32e4f96")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetEndEffectorParams-response)))
  "Returns md5sum for a message object of type 'SetEndEffectorParams-response"
  "65e2589a98b434e9e347ef66c32e4f96")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetEndEffectorParams-response>)))
  "Returns full string definition for message of type '<SetEndEffectorParams-response>"
  (cl:format cl:nil "int32 result~%uint64 queuedCmdIndex~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetEndEffectorParams-response)))
  "Returns full string definition for message of type 'SetEndEffectorParams-response"
  (cl:format cl:nil "int32 result~%uint64 queuedCmdIndex~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetEndEffectorParams-response>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetEndEffectorParams-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetEndEffectorParams-response
    (cl:cons ':result (result msg))
    (cl:cons ':queuedCmdIndex (queuedCmdIndex msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetEndEffectorParams)))
  'SetEndEffectorParams-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetEndEffectorParams)))
  'SetEndEffectorParams-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetEndEffectorParams)))
  "Returns string type for a service object of type '<SetEndEffectorParams>"
  "dobot/SetEndEffectorParams")