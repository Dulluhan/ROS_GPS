
(cl:in-package :asdf)

(defsystem "sb_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CarCommand" :depends-on ("_package_CarCommand"))
    (:file "_package_CarCommand" :depends-on ("_package"))
    (:file "gps" :depends-on ("_package_gps"))
    (:file "_package_gps" :depends-on ("_package"))
    (:file "jausout" :depends-on ("_package_jausout"))
    (:file "_package_jausout" :depends-on ("_package"))
    (:file "VisionNav" :depends-on ("_package_VisionNav"))
    (:file "_package_VisionNav" :depends-on ("_package"))
    (:file "ServoCommand" :depends-on ("_package_ServoCommand"))
    (:file "_package_ServoCommand" :depends-on ("_package"))
    (:file "IMU" :depends-on ("_package_IMU"))
    (:file "_package_IMU" :depends-on ("_package"))
    (:file "TurretCommand" :depends-on ("_package_TurretCommand"))
    (:file "_package_TurretCommand" :depends-on ("_package"))
    (:file "Pose" :depends-on ("_package_Pose"))
    (:file "_package_Pose" :depends-on ("_package"))
    (:file "LidarNav" :depends-on ("_package_LidarNav"))
    (:file "_package_LidarNav" :depends-on ("_package"))
    (:file "Velocity" :depends-on ("_package_Velocity"))
    (:file "_package_Velocity" :depends-on ("_package"))
    (:file "jausin" :depends-on ("_package_jausin"))
    (:file "_package_jausin" :depends-on ("_package"))
    (:file "RobotState" :depends-on ("_package_RobotState"))
    (:file "_package_RobotState" :depends-on ("_package"))
  ))