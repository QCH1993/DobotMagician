; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude GetEndEffectorGripper-request.msg.html

(cl:defclass <GetEndEffectorGripper-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetEndEffectorGripper-request (<GetEndEffectorGripper-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetEndEffectorGripper-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetEndEffectorGripper-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetEndEffectorGripper-request> is deprecated: use dobot-srv:GetEndEffectorGripper-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetEndEffectorGripper-request>) ostream)
  "Serializes a message object of type '<GetEndEffectorGripper-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetEndEffectorGripper-request>) istream)
  "Deserializes a message object of type '<GetEndEffectorGripper-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetEndEffectorGripper-request>)))
  "Returns string type for a service object of type '<GetEndEffectorGripper-request>"
  "dobot/GetEndEffectorGripperRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetEndEffectorGripper-request)))
  "Returns string type for a service object of type 'GetEndEffectorGripper-request"
  "dobot/GetEndEffectorGripperRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetEndEffectorGripper-request>)))
  "Returns md5sum for a message object of type '<GetEndEffectorGripper-request>"
  "4185902cfc52c9751c7305887881349c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetEndEffectorGripper-request)))
  "Returns md5sum for a message object of type 'GetEndEffectorGripper-request"
  "4185902cfc52c9751c7305887881349c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetEndEffectorGripper-request>)))
  "Returns full string definition for message of type '<GetEndEffectorGripper-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetEndEffectorGripper-request)))
  "Returns full string definition for message of type 'GetEndEffectorGripper-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetEndEffectorGripper-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetEndEffectorGripper-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetEndEffectorGripper-request
))
;//! \htmlinclude GetEndEffectorGripper-response.msg.html

(cl:defclass <GetEndEffectorGripper-response> (roslisp-msg-protocol:ros-message)
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
   (grip
    :reader grip
    :initarg :grip
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetEndEffectorGripper-response (<GetEndEffectorGripper-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetEndEffectorGripper-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetEndEffectorGripper-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetEndEffectorGripper-response> is deprecated: use dobot-srv:GetEndEffectorGripper-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetEndEffectorGripper-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'enableCtrl-val :lambda-list '(m))
(cl:defmethod enableCtrl-val ((m <GetEndEffectorGripper-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:enableCtrl-val is deprecated.  Use dobot-srv:enableCtrl instead.")
  (enableCtrl m))

(cl:ensure-generic-function 'grip-val :lambda-list '(m))
(cl:defmethod grip-val ((m <GetEndEffectorGripper-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:grip-val is deprecated.  Use dobot-srv:grip instead.")
  (grip m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetEndEffectorGripper-response>) ostream)
  "Serializes a message object of type '<GetEndEffectorGripper-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'enableCtrl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'grip)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetEndEffectorGripper-response>) istream)
  "Deserializes a message object of type '<GetEndEffectorGripper-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'enableCtrl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'grip)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetEndEffectorGripper-response>)))
  "Returns string type for a service object of type '<GetEndEffectorGripper-response>"
  "dobot/GetEndEffectorGripperResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetEndEffectorGripper-response)))
  "Returns string type for a service object of type 'GetEndEffectorGripper-response"
  "dobot/GetEndEffectorGripperResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetEndEffectorGripper-response>)))
  "Returns md5sum for a message object of type '<GetEndEffectorGripper-response>"
  "4185902cfc52c9751c7305887881349c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetEndEffectorGripper-response)))
  "Returns md5sum for a message object of type 'GetEndEffectorGripper-response"
  "4185902cfc52c9751c7305887881349c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetEndEffectorGripper-response>)))
  "Returns full string definition for message of type '<GetEndEffectorGripper-response>"
  (cl:format cl:nil "int32 result~%uint8 enableCtrl~%uint8 grip~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetEndEffectorGripper-response)))
  "Returns full string definition for message of type 'GetEndEffectorGripper-response"
  (cl:format cl:nil "int32 result~%uint8 enableCtrl~%uint8 grip~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetEndEffectorGripper-response>))
  (cl:+ 0
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetEndEffectorGripper-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetEndEffectorGripper-response
    (cl:cons ':result (result msg))
    (cl:cons ':enableCtrl (enableCtrl msg))
    (cl:cons ':grip (grip msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetEndEffectorGripper)))
  'GetEndEffectorGripper-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetEndEffectorGripper)))
  'GetEndEffectorGripper-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetEndEffectorGripper)))
  "Returns string type for a service object of type '<GetEndEffectorGripper>"
  "dobot/GetEndEffectorGripper")