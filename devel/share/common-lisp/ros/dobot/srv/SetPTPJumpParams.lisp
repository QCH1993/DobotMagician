; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude SetPTPJumpParams-request.msg.html

(cl:defclass <SetPTPJumpParams-request> (roslisp-msg-protocol:ros-message)
  ((jumpHeight
    :reader jumpHeight
    :initarg :jumpHeight
    :type cl:float
    :initform 0.0)
   (zLimit
    :reader zLimit
    :initarg :zLimit
    :type cl:float
    :initform 0.0)
   (isQueued
    :reader isQueued
    :initarg :isQueued
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetPTPJumpParams-request (<SetPTPJumpParams-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPTPJumpParams-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPTPJumpParams-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetPTPJumpParams-request> is deprecated: use dobot-srv:SetPTPJumpParams-request instead.")))

(cl:ensure-generic-function 'jumpHeight-val :lambda-list '(m))
(cl:defmethod jumpHeight-val ((m <SetPTPJumpParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:jumpHeight-val is deprecated.  Use dobot-srv:jumpHeight instead.")
  (jumpHeight m))

(cl:ensure-generic-function 'zLimit-val :lambda-list '(m))
(cl:defmethod zLimit-val ((m <SetPTPJumpParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:zLimit-val is deprecated.  Use dobot-srv:zLimit instead.")
  (zLimit m))

(cl:ensure-generic-function 'isQueued-val :lambda-list '(m))
(cl:defmethod isQueued-val ((m <SetPTPJumpParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:isQueued-val is deprecated.  Use dobot-srv:isQueued instead.")
  (isQueued m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPTPJumpParams-request>) ostream)
  "Serializes a message object of type '<SetPTPJumpParams-request>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isQueued) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPTPJumpParams-request>) istream)
  "Deserializes a message object of type '<SetPTPJumpParams-request>"
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
    (cl:setf (cl:slot-value msg 'isQueued) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPTPJumpParams-request>)))
  "Returns string type for a service object of type '<SetPTPJumpParams-request>"
  "dobot/SetPTPJumpParamsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPTPJumpParams-request)))
  "Returns string type for a service object of type 'SetPTPJumpParams-request"
  "dobot/SetPTPJumpParamsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPTPJumpParams-request>)))
  "Returns md5sum for a message object of type '<SetPTPJumpParams-request>"
  "9264d5750a7f398bdbc1bbd16ec60e63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPTPJumpParams-request)))
  "Returns md5sum for a message object of type 'SetPTPJumpParams-request"
  "9264d5750a7f398bdbc1bbd16ec60e63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPTPJumpParams-request>)))
  "Returns full string definition for message of type '<SetPTPJumpParams-request>"
  (cl:format cl:nil "float32 jumpHeight~%float32 zLimit~%bool isQueued~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPTPJumpParams-request)))
  "Returns full string definition for message of type 'SetPTPJumpParams-request"
  (cl:format cl:nil "float32 jumpHeight~%float32 zLimit~%bool isQueued~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPTPJumpParams-request>))
  (cl:+ 0
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPTPJumpParams-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPTPJumpParams-request
    (cl:cons ':jumpHeight (jumpHeight msg))
    (cl:cons ':zLimit (zLimit msg))
    (cl:cons ':isQueued (isQueued msg))
))
;//! \htmlinclude SetPTPJumpParams-response.msg.html

(cl:defclass <SetPTPJumpParams-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetPTPJumpParams-response (<SetPTPJumpParams-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPTPJumpParams-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPTPJumpParams-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetPTPJumpParams-response> is deprecated: use dobot-srv:SetPTPJumpParams-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetPTPJumpParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'queuedCmdIndex-val :lambda-list '(m))
(cl:defmethod queuedCmdIndex-val ((m <SetPTPJumpParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:queuedCmdIndex-val is deprecated.  Use dobot-srv:queuedCmdIndex instead.")
  (queuedCmdIndex m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPTPJumpParams-response>) ostream)
  "Serializes a message object of type '<SetPTPJumpParams-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPTPJumpParams-response>) istream)
  "Deserializes a message object of type '<SetPTPJumpParams-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPTPJumpParams-response>)))
  "Returns string type for a service object of type '<SetPTPJumpParams-response>"
  "dobot/SetPTPJumpParamsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPTPJumpParams-response)))
  "Returns string type for a service object of type 'SetPTPJumpParams-response"
  "dobot/SetPTPJumpParamsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPTPJumpParams-response>)))
  "Returns md5sum for a message object of type '<SetPTPJumpParams-response>"
  "9264d5750a7f398bdbc1bbd16ec60e63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPTPJumpParams-response)))
  "Returns md5sum for a message object of type 'SetPTPJumpParams-response"
  "9264d5750a7f398bdbc1bbd16ec60e63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPTPJumpParams-response>)))
  "Returns full string definition for message of type '<SetPTPJumpParams-response>"
  (cl:format cl:nil "int32 result~%uint64 queuedCmdIndex~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPTPJumpParams-response)))
  "Returns full string definition for message of type 'SetPTPJumpParams-response"
  (cl:format cl:nil "int32 result~%uint64 queuedCmdIndex~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPTPJumpParams-response>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPTPJumpParams-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPTPJumpParams-response
    (cl:cons ':result (result msg))
    (cl:cons ':queuedCmdIndex (queuedCmdIndex msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetPTPJumpParams)))
  'SetPTPJumpParams-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetPTPJumpParams)))
  'SetPTPJumpParams-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPTPJumpParams)))
  "Returns string type for a service object of type '<SetPTPJumpParams>"
  "dobot/SetPTPJumpParams")