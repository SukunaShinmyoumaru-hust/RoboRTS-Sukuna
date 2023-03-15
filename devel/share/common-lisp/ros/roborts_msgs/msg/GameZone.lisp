; Auto-generated. Do not edit!


(cl:in-package roborts_msgs-msg)


;//! \htmlinclude GameZone.msg.html

(cl:defclass <GameZone> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (active
    :reader active
    :initarg :active
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GameZone (<GameZone>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GameZone>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GameZone)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roborts_msgs-msg:<GameZone> is deprecated: use roborts_msgs-msg:GameZone instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <GameZone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-msg:type-val is deprecated.  Use roborts_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'active-val :lambda-list '(m))
(cl:defmethod active-val ((m <GameZone>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-msg:active-val is deprecated.  Use roborts_msgs-msg:active instead.")
  (active m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GameZone>)))
    "Constants for message type '<GameZone>"
  '((:RED_HP_RECOVERY . 1)
    (:RED_BULLET_SUPPLY . 2)
    (:BLUE_HP_RECOVERY . 3)
    (:BLUE_BULLET_SUPPLY . 4)
    (:DISABLE_SHOOTING . 5)
    (:DISABLE_MOVEMENT . 6))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GameZone)))
    "Constants for message type 'GameZone"
  '((:RED_HP_RECOVERY . 1)
    (:RED_BULLET_SUPPLY . 2)
    (:BLUE_HP_RECOVERY . 3)
    (:BLUE_BULLET_SUPPLY . 4)
    (:DISABLE_SHOOTING . 5)
    (:DISABLE_MOVEMENT . 6))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GameZone>) ostream)
  "Serializes a message object of type '<GameZone>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'active) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GameZone>) istream)
  "Deserializes a message object of type '<GameZone>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'active) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GameZone>)))
  "Returns string type for a message object of type '<GameZone>"
  "roborts_msgs/GameZone")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GameZone)))
  "Returns string type for a message object of type 'GameZone"
  "roborts_msgs/GameZone")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GameZone>)))
  "Returns md5sum for a message object of type '<GameZone>"
  "b28f2688671e9a9ba1cf15df35d7a80d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GameZone)))
  "Returns md5sum for a message object of type 'GameZone"
  "b28f2688671e9a9ba1cf15df35d7a80d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GameZone>)))
  "Returns full string definition for message of type '<GameZone>"
  (cl:format cl:nil "#game zone~%uint8 RED_HP_RECOVERY=1~%uint8 RED_BULLET_SUPPLY=2~%uint8 BLUE_HP_RECOVERY=3~%uint8 BLUE_BULLET_SUPPLY=4~%uint8 DISABLE_SHOOTING=5~%uint8 DISABLE_MOVEMENT=6~%~%uint8 type~%bool active~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GameZone)))
  "Returns full string definition for message of type 'GameZone"
  (cl:format cl:nil "#game zone~%uint8 RED_HP_RECOVERY=1~%uint8 RED_BULLET_SUPPLY=2~%uint8 BLUE_HP_RECOVERY=3~%uint8 BLUE_BULLET_SUPPLY=4~%uint8 DISABLE_SHOOTING=5~%uint8 DISABLE_MOVEMENT=6~%~%uint8 type~%bool active~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GameZone>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GameZone>))
  "Converts a ROS message object to a list"
  (cl:list 'GameZone
    (cl:cons ':type (type msg))
    (cl:cons ':active (active msg))
))
