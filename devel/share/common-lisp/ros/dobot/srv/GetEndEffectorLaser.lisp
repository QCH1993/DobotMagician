; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude GetEndEffectorLaser-request.msg.html

(cl:defclass <GetEndEffectorLaser-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetEndEffectorLaser-request (<GetEndEffectorLaser-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetEndEffectorLaser-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetEndEffectorLaser-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetEndEffectorLaser-request> is deprecated: use dobot-srv:GetEndEffectorLaser-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetEndEffectorLaser-request>) ostream)
  "Serializes a message object of type '<GetEndEffectorLaser-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetEndEffectorLaser-request>) istream)
  "Deserializes a message object of type '<GetEndEffectorLaser-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetEndEffectorLaser-request>)))
  "Returns string type for a service object of type '<GetEndEffectorLaser-request>"
  "dobot/GetEndEffectorLaserRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetEndEffectorLaser-request)))
  "Returns string type for a service object of type 'GetEndEffectorLaser-request"
  "dobot/GetEndEffectorLaserRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetEndEffectorLaser-request>)))
  "Returns md5sum for a message object of type '<GetEndEffectorLaser-request>"
  "a8f296ec06b91031fd6d56c18b2ea1e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetEndEffectorLaser-request)))
  "Returns md5sum for a message object of type 'GetEndEffectorLaser-request"
  "a8f296ec06b91031fd6d56c18b2ea1e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetEndEffectorLaser-request>)))
  "Returns full string definition for message of type '<GetEndEffectorLaser-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetEndEffectorLaser-request)))
  "Returns full string definition for message of type 'GetEndEffectorLaser-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetEndEffectorLaser-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetEndEffectorLaser-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetEndEffectorLaser-request
))
;//! \htmlinclude GetEndEffectorLaser-response.msg.html

(cl:defclass <GetEndEffectorLaser-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (enableCtrl
    :reader enableCtrl
    :initarg :enableCtrl
    :type cl:fixnum
    :initform 0)
   (on
    :reader on
    :initarg :on
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetEndEffectorLaser-response (<GetEndEffectorLaser-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetEndEffectorLaser-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetEndEffectorLaser-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetEndEffectorLaser-response> is deprecated: use dobot-srv:GetEndEffectorLaser-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetEndEffectorLaser-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'enableCtrl-val :lambda-list '(m))
(cl:defmethod enableCtrl-val ((m <GetEndEffectorLaser-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:enableCtrl-val is deprecated.  Use dobot-srv:enableCtrl instead.")
  (enableCtrl m))

(cl:ensure-generic-function 'on-val :lambda-list '(m))
(cl:defmethod on-val ((m <GetEndEffectorLaser-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:on-val is deprecated.  Use dobot-srv:on instead.")
  (on m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetEndEffectorLaser-response>) ostream)
  "Serializes a message object of type '<GetEndEffectorLaser-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'enableCtrl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'on)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetEndEffectorLaser-response>) istream)
  "Deserializes a message object of type '<GetEndEffectorLaser-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'enableCtrl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'on)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetEndEffectorLaser-response>)))
  "Returns string type for a service object of type '<GetEndEffectorLaser-response>"
  "dobot/GetEndEffectorLaserResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetEndEffectorLaser-response)))
  "Returns string type for a service object of type 'GetEndEffectorLaser-response"
  "dobot/GetEndEffectorLaserResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetEndEffectorLaser-response>)))
  "Returns md5sum for a message object of type '<GetEndEffectorLaser-response>"
  "a8f296ec06b91031fd6d56c18b2ea1e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetEndEffectorLaser-response)))
  "Returns md5sum for a message object of type 'GetEndEffectorLaser-response"
  "a8f296ec06b91031fd6d56c18b2ea1e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetEndEffectorLaser-response>)))
  "Returns full string definition for message of type '<GetEndEffectorLaser-response>"
  (cl:format cl:nil "int32 result~%uint8 enableCtrl~%uint8 on~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetEndEffectorLaser-response)))
  "Returns full string definition for message of type 'GetEndEffectorLaser-response"
  (cl:format cl:nil "int32 result~%uint8 enableCtrl~%uint8 on~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetEndEffectorLaser-response>))
  (cl:+ 0
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetEndEffectorLaser-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetEndEffectorLaser-response
    (cl:cons ':result (result msg))
    (cl:cons ':enableCtrl (enableCtrl msg))
    (cl:cons ':on (on msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetEndEffectorLaser)))
  'GetEndEffectorLaser-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetEndEffectorLaser)))
  'GetEndEffectorLaser-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetEndEffectorLaser)))
  "Returns string type for a service object of type '<GetEndEffectorLaser>"
  "dobot/GetEndEffectorLaser")