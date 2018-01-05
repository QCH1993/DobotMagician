; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude SetEndEffectorLaser-request.msg.html

(cl:defclass <SetEndEffectorLaser-request> (roslisp-msg-protocol:ros-message)
  ((enableCtrl
    :reader enableCtrl
    :initarg :enableCtrl
    :type cl:fixnum
    :initform 0)
   (on
    :reader on
    :initarg :on
    :type cl:fixnum
    :initform 0)
   (isQueued
    :reader isQueued
    :initarg :isQueued
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetEndEffectorLaser-request (<SetEndEffectorLaser-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetEndEffectorLaser-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetEndEffectorLaser-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetEndEffectorLaser-request> is deprecated: use dobot-srv:SetEndEffectorLaser-request instead.")))

(cl:ensure-generic-function 'enableCtrl-val :lambda-list '(m))
(cl:defmethod enableCtrl-val ((m <SetEndEffectorLaser-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:enableCtrl-val is deprecated.  Use dobot-srv:enableCtrl instead.")
  (enableCtrl m))

(cl:ensure-generic-function 'on-val :lambda-list '(m))
(cl:defmethod on-val ((m <SetEndEffectorLaser-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:on-val is deprecated.  Use dobot-srv:on instead.")
  (on m))

(cl:ensure-generic-function 'isQueued-val :lambda-list '(m))
(cl:defmethod isQueued-val ((m <SetEndEffectorLaser-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:isQueued-val is deprecated.  Use dobot-srv:isQueued instead.")
  (isQueued m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetEndEffectorLaser-request>) ostream)
  "Serializes a message object of type '<SetEndEffectorLaser-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'enableCtrl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'on)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isQueued) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetEndEffectorLaser-request>) istream)
  "Deserializes a message object of type '<SetEndEffectorLaser-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'enableCtrl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'on)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'isQueued) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetEndEffectorLaser-request>)))
  "Returns string type for a service object of type '<SetEndEffectorLaser-request>"
  "dobot/SetEndEffectorLaserRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetEndEffectorLaser-request)))
  "Returns string type for a service object of type 'SetEndEffectorLaser-request"
  "dobot/SetEndEffectorLaserRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetEndEffectorLaser-request>)))
  "Returns md5sum for a message object of type '<SetEndEffectorLaser-request>"
  "97ab3479a3c227d7c546855f18fa2912")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetEndEffectorLaser-request)))
  "Returns md5sum for a message object of type 'SetEndEffectorLaser-request"
  "97ab3479a3c227d7c546855f18fa2912")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetEndEffectorLaser-request>)))
  "Returns full string definition for message of type '<SetEndEffectorLaser-request>"
  (cl:format cl:nil "uint8 enableCtrl~%uint8 on~%bool isQueued~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetEndEffectorLaser-request)))
  "Returns full string definition for message of type 'SetEndEffectorLaser-request"
  (cl:format cl:nil "uint8 enableCtrl~%uint8 on~%bool isQueued~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetEndEffectorLaser-request>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetEndEffectorLaser-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetEndEffectorLaser-request
    (cl:cons ':enableCtrl (enableCtrl msg))
    (cl:cons ':on (on msg))
    (cl:cons ':isQueued (isQueued msg))
))
;//! \htmlinclude SetEndEffectorLaser-response.msg.html

(cl:defclass <SetEndEffectorLaser-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetEndEffectorLaser-response (<SetEndEffectorLaser-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetEndEffectorLaser-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetEndEffectorLaser-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetEndEffectorLaser-response> is deprecated: use dobot-srv:SetEndEffectorLaser-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetEndEffectorLaser-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'queuedCmdIndex-val :lambda-list '(m))
(cl:defmethod queuedCmdIndex-val ((m <SetEndEffectorLaser-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:queuedCmdIndex-val is deprecated.  Use dobot-srv:queuedCmdIndex instead.")
  (queuedCmdIndex m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetEndEffectorLaser-response>) ostream)
  "Serializes a message object of type '<SetEndEffectorLaser-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetEndEffectorLaser-response>) istream)
  "Deserializes a message object of type '<SetEndEffectorLaser-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetEndEffectorLaser-response>)))
  "Returns string type for a service object of type '<SetEndEffectorLaser-response>"
  "dobot/SetEndEffectorLaserResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetEndEffectorLaser-response)))
  "Returns string type for a service object of type 'SetEndEffectorLaser-response"
  "dobot/SetEndEffectorLaserResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetEndEffectorLaser-response>)))
  "Returns md5sum for a message object of type '<SetEndEffectorLaser-response>"
  "97ab3479a3c227d7c546855f18fa2912")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetEndEffectorLaser-response)))
  "Returns md5sum for a message object of type 'SetEndEffectorLaser-response"
  "97ab3479a3c227d7c546855f18fa2912")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetEndEffectorLaser-response>)))
  "Returns full string definition for message of type '<SetEndEffectorLaser-response>"
  (cl:format cl:nil "int32 result~%uint64 queuedCmdIndex~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetEndEffectorLaser-response)))
  "Returns full string definition for message of type 'SetEndEffectorLaser-response"
  (cl:format cl:nil "int32 result~%uint64 queuedCmdIndex~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetEndEffectorLaser-response>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetEndEffectorLaser-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetEndEffectorLaser-response
    (cl:cons ':result (result msg))
    (cl:cons ':queuedCmdIndex (queuedCmdIndex msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetEndEffectorLaser)))
  'SetEndEffectorLaser-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetEndEffectorLaser)))
  'SetEndEffectorLaser-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetEndEffectorLaser)))
  "Returns string type for a service object of type '<SetEndEffectorLaser>"
  "dobot/SetEndEffectorLaser")