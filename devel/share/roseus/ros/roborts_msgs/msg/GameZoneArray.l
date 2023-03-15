;; Auto-generated. Do not edit!


(when (boundp 'roborts_msgs::GameZoneArray)
  (if (not (find-package "ROBORTS_MSGS"))
    (make-package "ROBORTS_MSGS"))
  (shadow 'GameZoneArray (find-package "ROBORTS_MSGS")))
(unless (find-package "ROBORTS_MSGS::GAMEZONEARRAY")
  (make-package "ROBORTS_MSGS::GAMEZONEARRAY"))

(in-package "ROS")
;;//! \htmlinclude GameZoneArray.msg.html


(defclass roborts_msgs::GameZoneArray
  :super ros::object
  :slots (_zone ))

(defmethod roborts_msgs::GameZoneArray
  (:init
   (&key
    ((:zone __zone) (let (r) (dotimes (i 6) (push (instance roborts_msgs::GameZone :init) r)) r))
    )
   (send-super :init)
   (setq _zone __zone)
   self)
  (:zone
   (&rest __zone)
   (if (keywordp (car __zone))
       (send* _zone __zone)
     (progn
       (if __zone (setq _zone (car __zone)))
       _zone)))
  (:serialization-length
   ()
   (+
    ;; roborts_msgs/GameZone[6] _zone
    (apply #'+ (send-all _zone :serialization-length))
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; roborts_msgs/GameZone[6] _zone
     (dolist (elem _zone)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; roborts_msgs/GameZone[6] _zone
   (dotimes (i 6)
     (send (elt _zone i) :deserialize buf ptr-) (incf ptr- (send (elt _zone i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get roborts_msgs::GameZoneArray :md5sum-) "ed52b36c9b2980794ba629e953695da2")
(setf (get roborts_msgs::GameZoneArray :datatype-) "roborts_msgs/GameZoneArray")
(setf (get roborts_msgs::GameZoneArray :definition-)
      "#game zone array
GameZone[6] zone

================================================================================
MSG: roborts_msgs/GameZone
#game zone
uint8 RED_HP_RECOVERY=1
uint8 RED_BULLET_SUPPLY=2
uint8 BLUE_HP_RECOVERY=3
uint8 BLUE_BULLET_SUPPLY=4
uint8 DISABLE_SHOOTING=5
uint8 DISABLE_MOVEMENT=6

uint8 type
bool active

")



(provide :roborts_msgs/GameZoneArray "ed52b36c9b2980794ba629e953695da2")


