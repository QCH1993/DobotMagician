; Auto-generated. Do not edit!


(cl:in-package dobot-srv)


;//! \htmlinclude GetAlarmsState-request.msg.html

(cl:defclass <GetAlarmsState-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetAlarmsState-request (<GetAlarmsState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAlarmsState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAlarmsState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetAlarmsState-request> is deprecated: use dobot-srv:GetAlarmsState-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAlarmsState-request>) ostream)
  "Serializes a message object of type '<GetAlarmsState-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAlarmsState-request>) istream)
  "Deserializes a message object of type '<GetAlarmsState-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAlarmsState-request>)))
  "Returns string type for a service object of type '<GetAlarmsState-request>"
  "dobot/GetAlarmsStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAlarmsState-request)))
  "Returns string type for a service object of type 'GetAlarmsState-request"
  "dobot/GetAlarmsStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAlarmsState-request>)))
  "Returns md5sum for a message object of type '<GetAlarmsState-request>"
  "471cc92db011a752d21793dfa031a894")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAlarmsState-request)))
  "Returns md5sum for a message object of type 'GetAlarmsState-request"
  "471cc92db011a752d21793dfa031a894")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAlarmsState-request>)))
  "Returns full string definition for message of type '<GetAlarmsState-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAlarmsState-request)))
  "Returns full string definition for message of type 'GetAlarmsState-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAlarmsState-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAlarmsState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAlarmsState-request
))
;//! \htmlinclude GetAlarmsState-response.msg.html

(cl:defclass <GetAlarmsState-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (alarmsState
    :reader alarmsState
    :initarg :alarmsState
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass GetAlarmsState-response (<GetAlarmsState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAlarmsState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAlarmsState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dobot-srv:<GetAlarmsState-response> is deprecated: use dobot-srv:GetAlarmsState-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetAlarmsState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:result-val is deprecated.  Use dobot-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'alarmsState-val :lambda-list '(m))
(cl:defmethod alarmsState-val ((m <GetAlarmsState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dobot-srv:alarmsState-val is deprecated.  Use dobot-srv:alarmsState instead.")
  (alarmsState m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAlarmsState-response>) ostream)
  "Serializes a message object of type '<GetAlarmsState-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'alarmsState))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'alarmsState))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAlarmsState-response>) istream)
  "Deserializes a message object of type '<GetAlarmsState-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'alarmsState) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'alarmsState)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAlarmsState-response>)))
  "Returns string type for a service object of type '<GetAlarmsState-response>"
  "dobot/GetAlarmsStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAlarmsState-response)))
  "Returns string type for a service object of type 'GetAlarmsState-response"
  "dobot/GetAlarmsStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAlarmsState-response>)))
  "Returns md5sum for a message object of type '<GetAlarmsState-response>"
  "471cc92db011a752d21793dfa031a894")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAlarmsState-response)))
  "Returns md5sum for a message object of type 'GetAlarmsState-response"
  "471cc92db011a752d21793dfa031a894")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAlarmsState-response>)))
  "Returns full string definition for message of type '<GetAlarmsState-response>"
  (cl:format cl:nil "int32 result~%uint8[] alarmsState~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAlarmsState-response)))
  "Returns full string definition for message of type 'GetAlarmsState-response"
  (cl:format cl:nil "int32 result~%uint8[] alarmsState~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAlarmsState-response>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'alarmsState) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAlarmsState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAlarmsState-response
    (cl:cons ':result (result msg))
    (cl:cons ':alarmsState (alarmsState msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetAlarmsState)))
  'GetAlarmsState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetAlarmsState)))
  'GetAlarmsState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAlarmsState)))
  "Returns string type for a service object of type '<GetAlarmsState>"
  "dobot/GetAlarmsState")