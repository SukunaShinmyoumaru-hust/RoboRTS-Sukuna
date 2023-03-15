;; Auto-generated. Do not edit!


(when (boundp 'roborts_msgs::RobotHeat)
  (if (not (find-package "ROBORTS_MSGS"))
    (make-package "ROBORTS_MSGS"))
  (shadow 'RobotHeat (find-package "ROBORTS_MSGS")))
(unless (find-package "ROBORTS_MSGS::ROBOTHEAT")
  (make-package "ROBORTS_MSGS::ROBOTHEAT"))

(in-package "ROS")
;;//! \htmlinclude RobotHeat.msg.html


(defclass roborts_msgs::RobotHeat
  :super ros::object
  :slots (_chassis_volt _chassis_current _chassis_power _chassis_power_buffer _shooter_heat ))

(defmethod roborts_msgs::RobotHeat
  (:init
   (&key
    ((:chassis_volt __chassis_volt) 0)
    ((:chassis_current __chassis_current) 0)
    ((:chassis_power __chassis_power) 0.0)
    ((:chassis_power_buffer __chassis_power_buffer) 0)
    ((:shooter_heat __shooter_heat) 0)
    )
   (send-super :init)
   (setq _chassis_volt (round __chassis_volt))
   (setq _chassis_current (round __chassis_current))
   (setq _chassis_power (float __chassis_power))
   (setq _chassis_power_buffer (round __chassis_power_buffer))
   (setq _shooter_heat (round __shooter_heat))
   self)
  (:chassis_volt
   (&optional __chassis_volt)
   (if __chassis_volt (setq _chassis_volt __chassis_volt)) _chassis_volt)
  (:chassis_current
   (&optional __chassis_current)
   (if __chassis_current (setq _chassis_current __chassis_current)) _chassis_current)
  (:chassis_power
   (&optional __chassis_power)
   (if __chassis_power (setq _chassis_power __chassis_power)) _chassis_power)
  (:chassis_power_buffer
   (&optional __chassis_power_buffer)
   (if __chassis_power_buffer (setq _chassis_power_buffer __chassis_power_buffer)) _chassis_power_buffer)
  (:shooter_heat
   (&optional __shooter_heat)
   (if __shooter_heat (setq _shooter_heat __shooter_heat)) _shooter_heat)
  (:serialization-length
   ()
   (+
    ;; uint16 _chassis_volt
    2
    ;; uint16 _chassis_current
    2
    ;; float64 _chassis_power
    8
    ;; uint16 _chassis_power_buffer
    2
    ;; uint16 _shooter_heat
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _chassis_volt
       (write-word _chassis_volt s)
     ;; uint16 _chassis_current
       (write-word _chassis_current s)
     ;; float64 _chassis_power
       (sys::poke _chassis_power (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint16 _chassis_power_buffer
       (write-word _chassis_power_buffer s)
     ;; uint16 _shooter_heat
       (write-word _shooter_heat s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _chassis_volt
     (setq _chassis_volt (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _chassis_current
     (setq _chassis_current (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _chassis_power
     (setq _chassis_power (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint16 _chassis_power_buffer
     (setq _chassis_power_buffer (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _shooter_heat
     (setq _shooter_heat (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get roborts_msgs::RobotHeat :md5sum-) "12a69f2d33ac7367772428034e998f18")
(setf (get roborts_msgs::RobotHeat :datatype-) "roborts_msgs/RobotHeat")
(setf (get roborts_msgs::RobotHeat :definition-)
      "#robot power and heat data
uint16 chassis_volt
uint16 chassis_current
float64  chassis_power
uint16 chassis_power_buffer
uint16 shooter_heat


")



(provide :roborts_msgs/RobotHeat "12a69f2d33ac7367772428034e998f18")


