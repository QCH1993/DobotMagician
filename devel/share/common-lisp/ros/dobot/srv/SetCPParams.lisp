; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude SetCPParams-request.msg.html

(cl:defclass <SetCPParams-request> (roslisp-msg-protocol:ros-message)
  ((planAcc
    :reader planAcc
    :initarg :planAcc
    :type cl:float
    :initform 0.0)
   (junctionVel
    :reader junctionVel
    :initarg :junctionVel
    :type cl:float
    :initform 0.0)
   (acc
    :reader acc
    :initarg :acc
    :type cl:float
    :initform 0.0)
   (realTimeTrack
    :reader realTimeTrack
    :initarg :realTimeTrack
    :type cl:fixnum
    :initform 0)
   (isQueued
    :reader isQueued
    :initarg :isQueued
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetCPParams-request (<SetCPParams-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCPParams-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCPParams-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetCPParams-request> is deprecated: use dobot-srv:SetCPParams-request instead.")))

(cl:ensure-generic-function 'planAcc-val :lambda-list '(m))
(cl:defmethod planAcc-val ((m <SetCPParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:planAcc-val is deprecated.  Use dobot-srv:planAcc instead.")
  (planAcc m))

(cl:ensure-generic-function 'junctionVel-val :lambda-list '(m))
(cl:defmethod junctionVel-val ((m <SetCPParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:junctionVel-val is deprecated.  Use dobot-srv:junctionVel instead.")
  (junctionVel m))

(cl:ensure-generic-function 'acc-val :lambda-list '(m))
(cl:defmethod acc-val ((m <SetCPParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:acc-val is deprecated.  Use dobot-srv:acc instead.")
  (acc m))

(cl:ensure-generic-function 'realTimeTrack-val :lambda-list '(m))
(cl:defmethod realTimeTrack-val ((m <SetCPParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:realTimeTrack-val is deprecated.  Use dobot-srv:realTimeTrack instead.")
  (realTimeTrack m))

(cl:ensure-generic-function 'isQueued-val :lambda-list '(m))
(cl:defmethod isQueued-val ((m <SetCPParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:isQueued-val is deprecated.  Use dobot-srv:isQueued instead.")
  (isQueued m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCPParams-request>) ostream)
  "Serializes a message object of type '<SetCPParams-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'planAcc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'junctionVel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'acc))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'realTimeTrack)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isQueued) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCPParams-request>) istream)
  "Deserializes a message object of type '<SetCPParams-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'planAcc) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'junctionVel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acc) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'realTimeTrack)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'isQueued) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCPParams-request>)))
  "Returns string type for a service object of type '<SetCPParams-request>"
  "dobot/SetCPParamsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCPParams-request)))
  "Returns string type for a service object of type 'SetCPParams-request"
  "dobot/SetCPParamsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCPParams-request>)))
  "Returns md5sum for a message object of type '<SetCPParams-request>"
  "f1c22d901d2cad5a8687473723199ac1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCPParams-request)))
  "Returns md5sum for a message object of type 'SetCPParams-request"
  "f1c22d901d2cad5a8687473723199ac1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCPParams-request>)))
  "Returns full string definition for message of type '<SetCPParams-request>"
  (cl:format cl:nil "float32 planAcc~%float32 junctionVel~%float32 acc~%uint8 realTimeTrack~%bool isQueued~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCPParams-request)))
  "Returns full string definition for message of type 'SetCPParams-request"
  (cl:format cl:nil "float32 planAcc~%float32 junctionVel~%float32 acc~%uint8 realTimeTrack~%bool isQueued~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCPParams-request>))
  (cl:+ 0
     4
     4
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCPParams-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCPParams-request
    (cl:cons ':planAcc (planAcc msg))
    (cl:cons ':junctionVel (junctionVel msg))
    (cl:cons ':acc (acc msg))
    (cl:cons ':realTimeTrack (realTimeTrack msg))
    (cl:cons ':isQueued (isQueued msg))
))
;//! \htmlinclude SetCPParams-response.msg.html

(cl:defclass <SetCPParams-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetCPParams-response (<SetCPParams-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCPParams-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCPParams-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetCPParams-response> is deprecated: use dobot-srv:SetCPParams-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetCPParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'queuedCmdIndex-val :lambda-list '(m))
(cl:defmethod queuedCmdIndex-val ((m <SetCPParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:queuedCmdIndex-val is deprecated.  Use dobot-srv:queuedCmdIndex instead.")
  (queuedCmdIndex m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCPParams-response>) ostream)
  "Serializes a message object of type '<SetCPParams-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCPParams-response>) istream)
  "Deserializes a message object of type '<SetCPParams-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCPParams-response>)))
  "Returns string type for a service object of type '<SetCPParams-response>"
  "dobot/SetCPParamsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCPParams-response)))
  "Returns string type for a service object of type 'SetCPParams-response"
  "dobot/SetCPParamsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCPParams-response>)))
  "Returns md5sum for a message object of type '<SetCPParams-response>"
  "f1c22d901d2cad5a8687473723199ac1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCPParams-response)))
  "Returns md5sum for a message object of type 'SetCPParams-response"
  "f1c22d901d2cad5a8687473723199ac1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCPParams-response>)))
  "Returns full string definition for message of type '<SetCPParams-response>"
  (cl:format cl:nil "int32 result~%uint64 queuedCmdIndex~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCPParams-response)))
  "Returns full string definition for message of type 'SetCPParams-response"
  (cl:format cl:nil "int32 result~%uint64 queuedCmdIndex~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCPParams-response>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCPParams-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCPParams-response
    (cl:cons ':result (result msg))
    (cl:cons ':queuedCmdIndex (queuedCmdIndex msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetCPParams)))
  'SetCPParams-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetCPParams)))
  'SetCPParams-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCPParams)))
  "Returns string type for a service object of type '<SetCPParams>"
  "dobot/SetCPParams")