; Auto-generated. Do not edit!


(cl:in-package roborts_msgs-msg)


;//! \htmlinclude LurkStatus.msg.html

(cl:defclass <LurkStatus> (roslisp-msg-protocol:ros-message)
  ((lurk_mode
    :reader lurk_mode
    :initarg :lurk_mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LurkStatus (<LurkStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LurkStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LurkStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roborts_msgs-msg:<LurkStatus> is deprecated: use roborts_msgs-msg:LurkStatus instead.")))

(cl:ensure-generic-function 'lurk_mode-val :lambda-list '(m))
(cl:defmethod lurk_mode-val ((m <LurkStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-msg:lurk_mode-val is deprecated.  Use roborts_msgs-msg:lurk_mode instead.")
  (lurk_mode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LurkStatus>)))
    "Constants for message type '<LurkStatus>"
  '((:LURK_STATUS_NORMAL . 0)
    (:LURK_STATUS_READY . 1)
    (:LURK_STATUS_LURKING . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LurkStatus)))
    "Constants for message type 'LurkStatus"
  '((:LURK_STATUS_NORMAL . 0)
    (:LURK_STATUS_READY . 1)
    (:LURK_STATUS_LURKING . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LurkStatus>) ostream)
  "Serializes a message object of type '<LurkStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lurk_mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LurkStatus>) istream)
  "Deserializes a message object of type '<LurkStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lurk_mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LurkStatus>)))
  "Returns string type for a message object of type '<LurkStatus>"
  "roborts_msgs/LurkStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LurkStatus)))
  "Returns string type for a message object of type 'LurkStatus"
  "roborts_msgs/LurkStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LurkStatus>)))
  "Returns md5sum for a message object of type '<LurkStatus>"
  "c957f31afa8b58bcdc83bff4a2db4791")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LurkStatus)))
  "Returns md5sum for a message object of type 'LurkStatus"
  "c957f31afa8b58bcdc83bff4a2db4791")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LurkStatus>)))
  "Returns full string definition for message of type '<LurkStatus>"
  (cl:format cl:nil "#lurking status~%~%uint8 lurk_status_normal=0~%uint8 lurk_status_ready=1~%uint8 lurk_status_lurking=2~%~%uint8 lurk_mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LurkStatus)))
  "Returns full string definition for message of type 'LurkStatus"
  (cl:format cl:nil "#lurking status~%~%uint8 lurk_status_normal=0~%uint8 lurk_status_ready=1~%uint8 lurk_status_lurking=2~%~%uint8 lurk_mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LurkStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LurkStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'LurkStatus
    (cl:cons ':lurk_mode (lurk_mode msg))
))
