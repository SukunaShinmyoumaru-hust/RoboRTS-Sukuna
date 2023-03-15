;; Auto-generated. Do not edit!


(when (boundp 'roborts_msgs::GameZone)
  (if (not (find-package "ROBORTS_MSGS"))
    (make-package "ROBORTS_MSGS"))
  (shadow 'GameZone (find-package "ROBORTS_MSGS")))
(unless (find-package "ROBORTS_MSGS::GAMEZONE")
  (make-package "ROBORTS_MSGS::GAMEZONE"))

(in-package "ROS")
;;//! \htmlinclude GameZone.msg.html


(intern "*RED_HP_RECOVERY*" (find-package "ROBORTS_MSGS::GAMEZONE"))
(shadow '*RED_HP_RECOVERY* (find-package "ROBORTS_MSGS::GAMEZONE"))
(defconstant roborts_msgs::GameZone::*RED_HP_RECOVERY* 1)
(intern "*RED_BULLET_SUPPLY*" (find-package "ROBORTS_MSGS::GAMEZONE"))
(shadow '*RED_BULLET_SUPPLY* (find-package "ROBORTS_MSGS::GAMEZONE"))
(defconstant roborts_msgs::GameZone::*RED_BULLET_SUPPLY* 2)
(intern "*BLUE_HP_RECOVERY*" (find-package "ROBORTS_MSGS::GAMEZONE"))
(shadow '*BLUE_HP_RECOVERY* (find-package "ROBORTS_MSGS::GAMEZONE"))
(defconstant roborts_msgs::GameZone::*BLUE_HP_RECOVERY* 3)
(intern "*BLUE_BULLET_SUPPLY*" (find-package "ROBORTS_MSGS::GAMEZONE"))
(shadow '*BLUE_BULLET_SUPPLY* (find-package "ROBORTS_MSGS::GAMEZONE"))
(defconstant roborts_msgs::GameZone::*BLUE_BULLET_SUPPLY* 4)
(intern "*DISABLE_SHOOTING*" (find-package "ROBORTS_MSGS::GAMEZONE"))
(shadow '*DISABLE_SHOOTING* (find-package "ROBORTS_MSGS::GAMEZONE"))
(defconstant roborts_msgs::GameZone::*DISABLE_SHOOTING* 5)
(intern "*DISABLE_MOVEMENT*" (find-package "ROBORTS_MSGS::GAMEZONE"))
(shadow '*DISABLE_MOVEMENT* (find-package "ROBORTS_MSGS::GAMEZONE"))
(defconstant roborts_msgs::GameZone::*DISABLE_MOVEMENT* 6)

(defun roborts_msgs::GameZone-to-symbol (const)
  (cond
        ((= const 1) 'roborts_msgs::GameZone::*RED_HP_RECOVERY*)
        ((= const 2) 'roborts_msgs::GameZone::*RED_BULLET_SUPPLY*)
        ((= const 3) 'roborts_msgs::GameZone::*BLUE_HP_RECOVERY*)
        ((= const 4) 'roborts_msgs::GameZone::*BLUE_BULLET_SUPPLY*)
        ((= const 5) 'roborts_msgs::GameZone::*DISABLE_SHOOTING*)
        ((= const 6) 'roborts_msgs::GameZone::*DISABLE_MOVEMENT*)
        (t nil)))

(defclass roborts_msgs::GameZone
  :super ros::object
  :slots (_type _active ))

(defmethod roborts_msgs::GameZone
  (:init
   (&key
    ((:type __type) 0)
    ((:active __active) nil)
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _active __active)
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:active
   (&optional (__active :null))
   (if (not (eq __active :null)) (setq _active __active)) _active)
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ;; bool _active
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;; bool _active
       (if _active (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _active
     (setq _active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get roborts_msgs::GameZone :md5sum-) "b28f2688671e9a9ba1cf15df35d7a80d")
(setf (get roborts_msgs::GameZone :datatype-) "roborts_msgs/GameZone")
(setf (get roborts_msgs::GameZone :definition-)
      "#game zone
uint8 RED_HP_RECOVERY=1
uint8 RED_BULLET_SUPPLY=2
uint8 BLUE_HP_RECOVERY=3
uint8 BLUE_BULLET_SUPPLY=4
uint8 DISABLE_SHOOTING=5
uint8 DISABLE_MOVEMENT=6

uint8 type
bool active

")



(provide :roborts_msgs/GameZone "b28f2688671e9a9ba1cf15df35d7a80d")


