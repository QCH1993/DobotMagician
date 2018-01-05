; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude GetEndEffectorSuctionCup-request.msg.html

(cl:defclass <GetEndEffectorSuctionCup-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetEndEffectorSuctionCup-request (<GetEndEffectorSuctionCup-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetEndEffectorSuctionCup-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetEndEffectorSuctionCup-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetEndEffectorSuctionCup-request> is deprecated: use dobot-srv:GetEndEffectorSuctionCup-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetEndEffectorSuctionCup-request>) ostream)
  "Serializes a message object of type '<GetEndEffectorSuctionCup-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetEndEffectorSuctionCup-request>) istream)
  "Deserializes a message object of type '<GetEndEffectorSuctionCup-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetEndEffectorSuctionCup-request>)))
  "Returns string type for a service object of type '<GetEndEffectorSuctionCup-request>"
  "dobot/GetEndEffectorSuctionCupRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetEndEffectorSuctionCup-request)))
  "Returns string type for a service object of type 'GetEndEffectorSuctionCup-request"
  "dobot/GetEndEffectorSuctionCupRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetEndEffectorSuctionCup-request>)))
  "Returns md5sum for a message object of type '<GetEndEffectorSuctionCup-request>"
  "4855d73076b6df7c6c4785878f4cef46")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetEndEffectorSuctionCup-request)))
  "Returns md5sum for a message object of type 'GetEndEffectorSuctionCup-request"
  "4855d73076b6df7c6c4785878f4cef46")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetEndEffectorSuctionCup-request>)))
  "Returns full string definition for message of type '<GetEndEffectorSuctionCup-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetEndEffectorSuctionCup-request)))
  "Returns full string definition for message of type 'GetEndEffectorSuctionCup-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetEndEffectorSuctionCup-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetEndEffectorSuctionCup-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetEndEffectorSuctionCup-request
))
;//! \htmlinclude GetEndEffectorSuctionCup-response.msg.html

(cl:defclass <GetEndEffectorSuctionCup-response> (roslisp-msg-protocol:ros-message)
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
   (suck
    :reader suck
    :initarg :suck
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetEndEffectorSuctionCup-response (<GetEndEffectorSuctionCup-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetEndEffectorSuctionCup-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetEndEffectorSuctionCup-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetEndEffectorSuctionCup-response> is deprecated: use dobot-srv:GetEndEffectorSuctionCup-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetEndEffectorSuctionCup-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'enableCtrl-val :lambda-list '(m))
(cl:defmethod enableCtrl-val ((m <GetEndEffectorSuctionCup-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:enableCtrl-val is deprecated.  Use dobot-srv:enableCtrl instead.")
  (enableCtrl m))

(cl:ensure-generic-function 'suck-val :lambda-list '(m))
(cl:defmethod suck-val ((m <GetEndEffectorSuctionCup-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:suck-val is deprecated.  Use dobot-srv:suck instead.")
  (suck m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetEndEffectorSuctionCup-response>) ostream)
  "Serializes a message object of type '<GetEndEffectorSuctionCup-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'enableCtrl)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'suck)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetEndEffectorSuctionCup-response>) istream)
  "Deserializes a message object of type '<GetEndEffectorSuctionCup-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'enableCtrl)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'suck)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetEndEffectorSuctionCup-response>)))
  "Returns string type for a service object of type '<GetEndEffectorSuctionCup-response>"
  "dobot/GetEndEffectorSuctionCupResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetEndEffectorSuctionCup-response)))
  "Returns string type for a service object of type 'GetEndEffectorSuctionCup-response"
  "dobot/GetEndEffectorSuctionCupResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetEndEffectorSuctionCup-response>)))
  "Returns md5sum for a message object of type '<GetEndEffectorSuctionCup-response>"
  "4855d73076b6df7c6c4785878f4cef46")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetEndEffectorSuctionCup-response)))
  "Returns md5sum for a message object of type 'GetEndEffectorSuctionCup-response"
  "4855d73076b6df7c6c4785878f4cef46")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetEndEffectorSuctionCup-response>)))
  "Returns full string definition for message of type '<GetEndEffectorSuctionCup-response>"
  (cl:format cl:nil "int32 result~%uint8 enableCtrl~%uint8 suck~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetEndEffectorSuctionCup-response)))
  "Returns full string definition for message of type 'GetEndEffectorSuctionCup-response"
  (cl:format cl:nil "int32 result~%uint8 enableCtrl~%uint8 suck~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetEndEffectorSuctionCup-response>))
  (cl:+ 0
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetEndEffectorSuctionCup-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetEndEffectorSuctionCup-response
    (cl:cons ':result (result msg))
    (cl:cons ':enableCtrl (enableCtrl msg))
    (cl:cons ':suck (suck msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetEndEffectorSuctionCup)))
  'GetEndEffectorSuctionCup-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetEndEffectorSuctionCup)))
  'GetEndEffectorSuctionCup-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetEndEffectorSuctionCup)))
  "Returns string type for a service object of type '<GetEndEffectorSuctionCup>"
  "dobot/GetEndEffectorSuctionCup")