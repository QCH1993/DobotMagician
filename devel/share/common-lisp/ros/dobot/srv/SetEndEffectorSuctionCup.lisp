; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude SetEndEffectorSuctionCup-request.msg.html

(cl:defclass <SetEndEffectorSuctionCup-request> (roslisp-msg-protocol:ros-message)
  ((enableCtrl
    :reader enableCtrl
    :initarg :enableCtrl
    :type cl:fixnum
    :initform 0)
   (suck
    :reader suck
    :initarg :suck
    :type cl:fixnum
    :initform 0)
   (isQueued
    :reader isQueued
    :initarg :isQueued
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetEndEffectorSuctionCup-request (<SetEndEffectorSuctionCup-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetEndEffectorSuctionCup-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetEndEffectorSuctionCup-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetEndEffectorSuctionCup-request> is deprecated: use dobot-srv:SetEndEffectorSuctionCup-request instead.")))

(cl:ensure-generic-function 'enableCtrl-val :lambda-list '(m))
(cl:defmethod enableCtrl-val ((m <SetEndEffectorSuctionCup-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:enableCtrl-val is deprecated.  Use dobot-srv:enableCtrl instead.")
  (enableCtrl m))

(cl:ensure-generic-function 'suck-val :lambda-list '(m))
(cl:defmethod suck-val ((m <SetEndEffectorSuctionCup-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:suck-val is deprecated.  Use dobot-srv:suck instead.")
  (suck m))

(cl:ensure-generic-function 'isQueued-val :lambda-list '(m))
(cl:defmethod isQueued-val ((m <SetEndEffectorSuctionCup-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:isQueued-val is deprecated.  Use dobot-srv:isQueued instead.")
  (isQueued m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetEndEffectorSuctionCup-request>) ostream)
  "Serializes a message object of type '<SetEndEffectorSuctionCup-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'enableCtrl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'suck)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isQueued) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetEndEffectorSuctionCup-request>) istream)
  "Deserializes a message object of type '<SetEndEffectorSuctionCup-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'enableCtrl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'suck)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'isQueued) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetEndEffectorSuctionCup-request>)))
  "Returns string type for a service object of type '<SetEndEffectorSuctionCup-request>"
  "dobot/SetEndEffectorSuctionCupRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetEndEffectorSuctionCup-request)))
  "Returns string type for a service object of type 'SetEndEffectorSuctionCup-request"
  "dobot/SetEndEffectorSuctionCupRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetEndEffectorSuctionCup-request>)))
  "Returns md5sum for a message object of type '<SetEndEffectorSuctionCup-request>"
  "27763da58719d6c55997a5f535fcffda")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetEndEffectorSuctionCup-request)))
  "Returns md5sum for a message object of type 'SetEndEffectorSuctionCup-request"
  "27763da58719d6c55997a5f535fcffda")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetEndEffectorSuctionCup-request>)))
  "Returns full string definition for message of type '<SetEndEffectorSuctionCup-request>"
  (cl:format cl:nil "uint8 enableCtrl~%uint8 suck~%bool isQueued~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetEndEffectorSuctionCup-request)))
  "Returns full string definition for message of type 'SetEndEffectorSuctionCup-request"
  (cl:format cl:nil "uint8 enableCtrl~%uint8 suck~%bool isQueued~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetEndEffectorSuctionCup-request>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetEndEffectorSuctionCup-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetEndEffectorSuctionCup-request
    (cl:cons ':enableCtrl (enableCtrl msg))
    (cl:cons ':suck (suck msg))
    (cl:cons ':isQueued (isQueued msg))
))
;//! \htmlinclude SetEndEffectorSuctionCup-response.msg.html

(cl:defclass <SetEndEffectorSuctionCup-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetEndEffectorSuctionCup-response (<SetEndEffectorSuctionCup-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetEndEffectorSuctionCup-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetEndEffectorSuctionCup-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetEndEffectorSuctionCup-response> is deprecated: use dobot-srv:SetEndEffectorSuctionCup-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetEndEffectorSuctionCup-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'queuedCmdIndex-val :lambda-list '(m))
(cl:defmethod queuedCmdIndex-val ((m <SetEndEffectorSuctionCup-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:queuedCmdIndex-val is deprecated.  Use dobot-srv:queuedCmdIndex instead.")
  (queuedCmdIndex m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetEndEffectorSuctionCup-response>) ostream)
  "Serializes a message object of type '<SetEndEffectorSuctionCup-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetEndEffectorSuctionCup-response>) istream)
  "Deserializes a message object of type '<SetEndEffectorSuctionCup-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetEndEffectorSuctionCup-response>)))
  "Returns string type for a service object of type '<SetEndEffectorSuctionCup-response>"
  "dobot/SetEndEffectorSuctionCupResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetEndEffectorSuctionCup-response)))
  "Returns string type for a service object of type 'SetEndEffectorSuctionCup-response"
  "dobot/SetEndEffectorSuctionCupResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetEndEffectorSuctionCup-response>)))
  "Returns md5sum for a message object of type '<SetEndEffectorSuctionCup-response>"
  "27763da58719d6c55997a5f535fcffda")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetEndEffectorSuctionCup-response)))
  "Returns md5sum for a message object of type 'SetEndEffectorSuctionCup-response"
  "27763da58719d6c55997a5f535fcffda")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetEndEffectorSuctionCup-response>)))
  "Returns full string definition for message of type '<SetEndEffectorSuctionCup-response>"
  (cl:format cl:nil "int32 result~%uint64 queuedCmdIndex~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetEndEffectorSuctionCup-response)))
  "Returns full string definition for message of type 'SetEndEffectorSuctionCup-response"
  (cl:format cl:nil "int32 result~%uint64 queuedCmdIndex~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetEndEffectorSuctionCup-response>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetEndEffectorSuctionCup-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetEndEffectorSuctionCup-response
    (cl:cons ':result (result msg))
    (cl:cons ':queuedCmdIndex (queuedCmdIndex msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetEndEffectorSuctionCup)))
  'SetEndEffectorSuctionCup-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetEndEffectorSuctionCup)))
  'SetEndEffectorSuctionCup-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetEndEffectorSuctionCup)))
  "Returns string type for a service object of type '<SetEndEffectorSuctionCup>"
  "dobot/SetEndEffectorSuctionCup")