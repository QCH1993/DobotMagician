; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude SetEMotor-request.msg.html

(cl:defclass <SetEMotor-request> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:fixnum
    :initform 0)
   (isEnabled
    :reader isEnabled
    :initarg :isEnabled
    :type cl:fixnum
    :initform 0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (isQueued
    :reader isQueued
    :initarg :isQueued
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetEMotor-request (<SetEMotor-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetEMotor-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetEMotor-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetEMotor-request> is deprecated: use dobot-srv:SetEMotor-request instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <SetEMotor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:index-val is deprecated.  Use dobot-srv:index instead.")
  (index m))

(cl:ensure-generic-function 'isEnabled-val :lambda-list '(m))
(cl:defmethod isEnabled-val ((m <SetEMotor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:isEnabled-val is deprecated.  Use dobot-srv:isEnabled instead.")
  (isEnabled m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <SetEMotor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:speed-val is deprecated.  Use dobot-srv:speed instead.")
  (speed m))

(cl:ensure-generic-function 'isQueued-val :lambda-list '(m))
(cl:defmethod isQueued-val ((m <SetEMotor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:isQueued-val is deprecated.  Use dobot-srv:isQueued instead.")
  (isQueued m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetEMotor-request>) ostream)
  "Serializes a message object of type '<SetEMotor-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isEnabled)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isQueued) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetEMotor-request>) istream)
  "Deserializes a message object of type '<SetEMotor-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isEnabled)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'isQueued) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetEMotor-request>)))
  "Returns string type for a service object of type '<SetEMotor-request>"
  "dobot/SetEMotorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetEMotor-request)))
  "Returns string type for a service object of type 'SetEMotor-request"
  "dobot/SetEMotorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetEMotor-request>)))
  "Returns md5sum for a message object of type '<SetEMotor-request>"
  "a45df13761ba868c43b89ce505bf680a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetEMotor-request)))
  "Returns md5sum for a message object of type 'SetEMotor-request"
  "a45df13761ba868c43b89ce505bf680a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetEMotor-request>)))
  "Returns full string definition for message of type '<SetEMotor-request>"
  (cl:format cl:nil "uint8 index~%uint8 isEnabled~%float32 speed~%bool isQueued~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetEMotor-request)))
  "Returns full string definition for message of type 'SetEMotor-request"
  (cl:format cl:nil "uint8 index~%uint8 isEnabled~%float32 speed~%bool isQueued~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetEMotor-request>))
  (cl:+ 0
     1
     1
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetEMotor-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetEMotor-request
    (cl:cons ':index (index msg))
    (cl:cons ':isEnabled (isEnabled msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':isQueued (isQueued msg))
))
;//! \htmlinclude SetEMotor-response.msg.html

(cl:defclass <SetEMotor-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetEMotor-response (<SetEMotor-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetEMotor-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetEMotor-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetEMotor-response> is deprecated: use dobot-srv:SetEMotor-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetEMotor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'queuedCmdIndex-val :lambda-list '(m))
(cl:defmethod queuedCmdIndex-val ((m <SetEMotor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:queuedCmdIndex-val is deprecated.  Use dobot-srv:queuedCmdIndex instead.")
  (queuedCmdIndex m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetEMotor-response>) ostream)
  "Serializes a message object of type '<SetEMotor-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetEMotor-response>) istream)
  "Deserializes a message object of type '<SetEMotor-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetEMotor-response>)))
  "Returns string type for a service object of type '<SetEMotor-response>"
  "dobot/SetEMotorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetEMotor-response)))
  "Returns string type for a service object of type 'SetEMotor-response"
  "dobot/SetEMotorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetEMotor-response>)))
  "Returns md5sum for a message object of type '<SetEMotor-response>"
  "a45df13761ba868c43b89ce505bf680a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetEMotor-response)))
  "Returns md5sum for a message object of type 'SetEMotor-response"
  "a45df13761ba868c43b89ce505bf680a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetEMotor-response>)))
  "Returns full string definition for message of type '<SetEMotor-response>"
  (cl:format cl:nil "int32 result~%uint64 queuedCmdIndex~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetEMotor-response)))
  "Returns full string definition for message of type 'SetEMotor-response"
  (cl:format cl:nil "int32 result~%uint64 queuedCmdIndex~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetEMotor-response>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetEMotor-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetEMotor-response
    (cl:cons ':result (result msg))
    (cl:cons ':queuedCmdIndex (queuedCmdIndex msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetEMotor)))
  'SetEMotor-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetEMotor)))
  'SetEMotor-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetEMotor)))
  "Returns string type for a service object of type '<SetEMotor>"
  "dobot/SetEMotor")