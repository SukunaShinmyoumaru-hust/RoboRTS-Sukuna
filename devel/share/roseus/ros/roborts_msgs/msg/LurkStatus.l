;; Auto-generated. Do not edit!


(when (boundp 'roborts_msgs::LurkStatus)
  (if (not (find-package "ROBORTS_MSGS"))
    (make-package "ROBORTS_MSGS"))
  (shadow 'LurkStatus (find-package "ROBORTS_MSGS")))
(unless (find-package "ROBORTS_MSGS::LURKSTATUS")
  (make-package "ROBORTS_MSGS::LURKSTATUS"))

(in-package "ROS")
;;//! \htmlinclude LurkStatus.msg.html


(intern "*LURK_STATUS_NORMAL*" (find-package "ROBORTS_MSGS::LURKSTATUS"))
(shadow '*LURK_STATUS_NORMAL* (find-package "ROBORTS_MSGS::LURKSTATUS"))
(defconstant roborts_msgs::LurkStatus::*LURK_STATUS_NORMAL* 0)
(intern "*LURK_STATUS_READY*" (find-package "ROBORTS_MSGS::LURKSTATUS"))
(shadow '*LURK_STATUS_READY* (find-package "ROBORTS_MSGS::LURKSTATUS"))
(defconstant roborts_msgs::LurkStatus::*LURK_STATUS_READY* 1)
(intern "*LURK_STATUS_LURKING*" (find-package "ROBORTS_MSGS::LURKSTATUS"))
(shadow '*LURK_STATUS_LURKING* (find-package "ROBORTS_MSGS::LURKSTATUS"))
(defconstant roborts_msgs::LurkStatus::*LURK_STATUS_LURKING* 2)

(defun roborts_msgs::LurkStatus-to-symbol (const)
  (cond
        ((= const 0) 'roborts_msgs::LurkStatus::*lurk_status_normal*)
        ((= const 1) 'roborts_msgs::LurkStatus::*lurk_status_ready*)
        ((= const 2) 'roborts_msgs::LurkStatus::*lurk_status_lurking*)
        (t nil)))

(defclass roborts_msgs::LurkStatus
  :super ros::object
  :slots (_lurk_mode ))

(defmethod roborts_msgs::LurkStatus
  (:init
   (&key
    ((:lurk_mode __lurk_mode) 0)
    )
   (send-super :init)
   (setq _lurk_mode (round __lurk_mode))
   self)
  (:lurk_mode
   (&optional __lurk_mode)
   (if __lurk_mode (setq _lurk_mode __lurk_mode)) _lurk_mode)
  (:serialization-length
   ()
   (+
    ;; uint8 _lurk_mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _lurk_mode
       (write-byte _lurk_mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _lurk_mode
     (setq _lurk_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get roborts_msgs::LurkStatus :md5sum-) "c957f31afa8b58bcdc83bff4a2db4791")
(setf (get roborts_msgs::LurkStatus :datatype-) "roborts_msgs/LurkStatus")
(setf (get roborts_msgs::LurkStatus :definition-)
      "#lurking status

uint8 lurk_status_normal=0
uint8 lurk_status_ready=1
uint8 lurk_status_lurking=2

uint8 lurk_mode

")



(provide :roborts_msgs/LurkStatus "c957f31afa8b58bcdc83bff4a2db4791")


