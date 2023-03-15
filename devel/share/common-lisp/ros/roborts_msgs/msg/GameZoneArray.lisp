; Auto-generated. Do not edit!


(cl:in-package roborts_msgs-msg)


;//! \htmlinclude GameZoneArray.msg.html

(cl:defclass <GameZoneArray> (roslisp-msg-protocol:ros-message)
  ((zone
    :reader zone
    :initarg :zone
    :type (cl:vector roborts_msgs-msg:GameZone)
   :initform (cl:make-array 6 :element-type 'roborts_msgs-msg:GameZone :initial-element (cl:make-instance 'roborts_msgs-msg:GameZone))))
)

(cl:defclass GameZoneArray (<GameZoneArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GameZoneArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GameZoneArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roborts_msgs-msg:<GameZoneArray> is deprecated: use roborts_msgs-msg:GameZoneArray instead.")))

(cl:ensure-generic-function 'zone-val :lambda-list '(m))
(cl:defmethod zone-val ((m <GameZoneArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roborts_msgs-msg:zone-val is deprecated.  Use roborts_msgs-msg:zone instead.")
  (zone m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GameZoneArray>) ostream)
  "Serializes a message object of type '<GameZoneArray>"
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'zone))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GameZoneArray>) istream)
  "Deserializes a message object of type '<GameZoneArray>"
  (cl:setf (cl:slot-value msg 'zone) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'zone)))
    (cl:dotimes (i 6)
    (cl:setf (cl:aref vals i) (cl:make-instance 'roborts_msgs-msg:GameZone))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GameZoneArray>)))
  "Returns string type for a message object of type '<GameZoneArray>"
  "roborts_msgs/GameZoneArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GameZoneArray)))
  "Returns string type for a message object of type 'GameZoneArray"
  "roborts_msgs/GameZoneArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GameZoneArray>)))
  "Returns md5sum for a message object of type '<GameZoneArray>"
  "ed52b36c9b2980794ba629e953695da2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GameZoneArray)))
  "Returns md5sum for a message object of type 'GameZoneArray"
  "ed52b36c9b2980794ba629e953695da2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GameZoneArray>)))
  "Returns full string definition for message of type '<GameZoneArray>"
  (cl:format cl:nil "#game zone array~%GameZone[6] zone~%~%================================================================================~%MSG: roborts_msgs/GameZone~%#game zone~%uint8 RED_HP_RECOVERY=1~%uint8 RED_BULLET_SUPPLY=2~%uint8 BLUE_HP_RECOVERY=3~%uint8 BLUE_BULLET_SUPPLY=4~%uint8 DISABLE_SHOOTING=5~%uint8 DISABLE_MOVEMENT=6~%~%uint8 type~%bool active~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GameZoneArray)))
  "Returns full string definition for message of type 'GameZoneArray"
  (cl:format cl:nil "#game zone array~%GameZone[6] zone~%~%================================================================================~%MSG: roborts_msgs/GameZone~%#game zone~%uint8 RED_HP_RECOVERY=1~%uint8 RED_BULLET_SUPPLY=2~%uint8 BLUE_HP_RECOVERY=3~%uint8 BLUE_BULLET_SUPPLY=4~%uint8 DISABLE_SHOOTING=5~%uint8 DISABLE_MOVEMENT=6~%~%uint8 type~%bool active~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GameZoneArray>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'zone) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GameZoneArray>))
  "Converts a ROS message object to a list"
  (cl:list 'GameZoneArray
    (cl:cons ':zone (zone msg))
))
