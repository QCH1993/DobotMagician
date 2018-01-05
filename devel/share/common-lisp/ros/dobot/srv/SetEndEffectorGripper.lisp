; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude SetEndEffectorGripper-request.msg.html

(cl:defclass <SetEndEffectorGripper-request> (roslisp-msg-protocol:ros-message)
  ((enableCtrl
    :reader enableCtrl
    :initarg :enableCtrl
    :type cl:fixnum
    :initform 0)
   (grip
    :reader grip
    :initarg :grip
    :type cl:fixnum
    :initform 0)
   (isQueued
    :reader isQueued
    :initarg :isQueued
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetEndEffectorGripper-request (<SetEndEffectorGripper-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetEndEffectorGripper-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetEndEffectorGripper-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetEndEffectorGripper-request> is deprecated: use dobot-srv:SetEndEffectorGripper-request instead.")))

(cl:ensure-generic-function 'enableCtrl-val :lambda-list '(m))
(cl:defmethod enableCtrl-val ((m <SetEndEffectorGripper-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:enableCtrl-val is deprecated.  Use dobot-srv:enableCtrl instead.")
  (enableCtrl m))

(cl:ensure-generic-function 'grip-val :lambda-list '(m))
(cl:defmethod grip-val ((m <SetEndEffectorGripper-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:grip-val is deprecated.  Use dobot-srv:grip instead.")
  (grip m))

(cl:ensure-generic-function 'isQueued-val :lambda-list '(m))
(cl:defmethod isQueued-val ((m <SetEndEffectorGripper-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:isQueued-val is deprecated.  Use dobot-srv:isQueued instead.")
  (isQueued m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetEndEffectorGripper-request>) ostream)
  "Serializes a message object of type '<SetEndEffectorGripper-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'enableCtrl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'grip)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isQueued) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetEndEffectorGripper-request>) istream)
  "Deserializes a message object of type '<SetEndEffectorGripper-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'enableCtrl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'grip)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'isQueued) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetEndEffectorGripper-request>)))
  "Returns string type for a service object of type '<SetEndEffectorGripper-request>"
  "dobot/SetEndEffectorGripperRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetEndEffectorGripper-request)))
  "Returns string type for a service object of type 'SetEndEffectorGripper-request"
  "dobot/SetEndEffectorGripperRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetEndEffectorGripper-request>)))
  "Returns md5sum for a message object of type '<SetEndEffectorGripper-request>"
  "1d911d0abb06ff63cb1e204d00f0ce77")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetEndEffectorGripper-request)))
  "Returns md5sum for a message object of type 'SetEndEffectorGripper-request"
  "1d911d0abb06ff63cb1e204d00f0ce77")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetEndEffectorGripper-request>)))
  "Returns full string definition for message of type '<SetEndEffectorGripper-request>"
  (cl:format cl:nil "uint8 enableCtrl~%uint8 grip~%bool isQueued~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetEndEffectorGripper-request)))
  "Returns full string definition for message of type 'SetEndEffectorGripper-request"
  (cl:format cl:nil "uint8 enableCtrl~%uint8 grip~%bool isQueued~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetEndEffectorGripper-request>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetEndEffectorGripper-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetEndEffectorGripper-request
    (cl:cons ':enableCtrl (enableCtrl msg))
    (cl:cons ':grip (grip msg))
    (cl:cons ':isQueued (isQueued msg))
))
;//! \htmlinclude SetEndEffectorGripper-response.msg.html

(cl:defclass <SetEndEffectorGripper-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetEndEffectorGripper-response (<SetEndEffectorGripper-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetEndEffectorGripper-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetEndEffectorGripper-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<SetEndEffectorGripper-response> is deprecated: use dobot-srv:SetEndEffectorGripper-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetEndEffectorGripper-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'queuedCmdIndex-val :lambda-list '(m))
(cl:defmethod queuedCmdIndex-val ((m <SetEndEffectorGripper-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:queuedCmdIndex-val is deprecated.  Use dobot-srv:queuedCmdIndex instead.")
  (queuedCmdIndex m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetEndEffectorGripper-response>) ostream)
  "Serializes a message object of type '<SetEndEffectorGripper-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetEndEffectorGripper-response>) istream)
  "Deserializes a message object of type '<SetEndEffectorGripper-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetEndEffectorGripper-response>)))
  "Returns string type for a service object of type '<SetEndEffectorGripper-response>"
  "dobot/SetEndEffectorGripperResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetEndEffectorGripper-response)))
  "Returns string type for a service object of type 'SetEndEffectorGripper-response"
  "dobot/SetEndEffectorGripperResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetEndEffectorGripper-response>)))
  "Returns md5sum for a message object of type '<SetEndEffectorGripper-response>"
  "1d911d0abb06ff63cb1e204d00f0ce77")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetEndEffectorGripper-response)))
  "Returns md5sum for a message object of type 'SetEndEffectorGripper-response"
  "1d911d0abb06ff63cb1e204d00f0ce77")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetEndEffectorGripper-response>)))
  "Returns full string definition for message of type '<SetEndEffectorGripper-response>"
  (cl:format cl:nil "int32 result~%uint64 queuedCmdIndex~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetEndEffectorGripper-response)))
  "Returns full string definition for message of type 'SetEndEffectorGripper-response"
  (cl:format cl:nil "int32 result~%uint64 queuedCmdIndex~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetEndEffectorGripper-response>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetEndEffectorGripper-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetEndEffectorGripper-response
    (cl:cons ':result (result msg))
    (cl:cons ':queuedCmdIndex (queuedCmdIndex msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetEndEffectorGripper)))
  'SetEndEffectorGripper-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetEndEffectorGripper)))
  'SetEndEffectorGripper-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetEndEffectorGripper)))
  "Returns string type for a service object of type '<SetEndEffectorGripper>"
  "dobot/SetEndEffectorGripper")