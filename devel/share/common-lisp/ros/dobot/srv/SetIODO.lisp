; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude SetIODO-request.msg.html

(cl:defclass <SetIODO-request> (roslisp-msg-protocol:ros-message)
  ((address
    :reader address
    :initarg :address
    :type cl:fixnum
    :initform 0)
   (level
    :reader level
    :initarg :level
    :type cl:fixnum
    :initform 0)
   (isQueued
    :reader isQueued
    :initarg :isQueued
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetIODO-request (<SetIODO-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetIODO-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetIODO-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetIODO-request> is deprecated: use dobot-srv:SetIODO-request instead.")))

(cl:ensure-generic-function 'address-val :lambda-list '(m))
(cl:defmethod address-val ((m <SetIODO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:address-val is deprecated.  Use dobot-srv:address instead.")
  (address m))

(cl:ensure-generic-function 'level-val :lambda-list '(m))
(cl:defmethod level-val ((m <SetIODO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:level-val is deprecated.  Use dobot-srv:level instead.")
  (level m))

(cl:ensure-generic-function 'isQueued-val :lambda-list '(m))
(cl:defmethod isQueued-val ((m <SetIODO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:isQueued-val is deprecated.  Use dobot-srv:isQueued instead.")
  (isQueued m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetIODO-request>) ostream)
  "Serializes a message object of type '<SetIODO-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'address)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'level)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isQueued) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetIODO-request>) istream)
  "Deserializes a message object of type '<SetIODO-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'address)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'level)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'isQueued) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetIODO-request>)))
  "Returns string type for a service object of type '<SetIODO-request>"
  "dobot/SetIODORequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetIODO-request)))
  "Returns string type for a service object of type 'SetIODO-request"
  "dobot/SetIODORequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetIODO-request>)))
  "Returns md5sum for a message object of type '<SetIODO-request>"
  "1ba1fdd7d67ee9bbca1ff95166a02cb2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetIODO-request)))
  "Returns md5sum for a message object of type 'SetIODO-request"
  "1ba1fdd7d67ee9bbca1ff95166a02cb2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetIODO-request>)))
  "Returns full string definition for message of type '<SetIODO-request>"
  (cl:format cl:nil "uint8 address~%uint8 level~%bool isQueued~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetIODO-request)))
  "Returns full string definition for message of type 'SetIODO-request"
  (cl:format cl:nil "uint8 address~%uint8 level~%bool isQueued~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetIODO-request>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetIODO-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetIODO-request
    (cl:cons ':address (address msg))
    (cl:cons ':level (level msg))
    (cl:cons ':isQueued (isQueued msg))
))
;//! \htmlinclude SetIODO-response.msg.html

(cl:defclass <SetIODO-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetIODO-response (<SetIODO-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetIODO-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetIODO-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetIODO-response> is deprecated: use dobot-srv:SetIODO-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetIODO-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'queuedCmdIndex-val :lambda-list '(m))
(cl:defmethod queuedCmdIndex-val ((m <SetIODO-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:queuedCmdIndex-val is deprecated.  Use dobot-srv:queuedCmdIndex instead.")
  (queuedCmdIndex m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetIODO-response>) ostream)
  "Serializes a message object of type '<SetIODO-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetIODO-response>) istream)
  "Deserializes a message object of type '<SetIODO-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetIODO-response>)))
  "Returns string type for a service object of type '<SetIODO-response>"
  "dobot/SetIODOResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetIODO-response)))
  "Returns string type for a service object of type 'SetIODO-response"
  "dobot/SetIODOResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetIODO-response>)))
  "Returns md5sum for a message object of type '<SetIODO-response>"
  "1ba1fdd7d67ee9bbca1ff95166a02cb2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetIODO-response)))
  "Returns md5sum for a message object of type 'SetIODO-response"
  "1ba1fdd7d67ee9bbca1ff95166a02cb2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetIODO-response>)))
  "Returns full string definition for message of type '<SetIODO-response>"
  (cl:format cl:nil "int32 result~%uint64 queuedCmdIndex~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetIODO-response)))
  "Returns full string definition for message of type 'SetIODO-response"
  (cl:format cl:nil "int32 result~%uint64 queuedCmdIndex~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetIODO-response>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetIODO-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetIODO-response
    (cl:cons ':result (result msg))
    (cl:cons ':queuedCmdIndex (queuedCmdIndex msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetIODO)))
  'SetIODO-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetIODO)))
  'SetIODO-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetIODO)))
  "Returns string type for a service object of type '<SetIODO>"
  "dobot/SetIODO")