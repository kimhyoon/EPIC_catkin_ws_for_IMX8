
(cl:in-package :asdf)

(defsystem "swarmtal_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "drone_commander_state" :depends-on ("_package_drone_commander_state"))
    (:file "_package_drone_commander_state" :depends-on ("_package"))
    (:file "drone_onboard_command" :depends-on ("_package_drone_onboard_command"))
    (:file "_package_drone_onboard_command" :depends-on ("_package"))
    (:file "drone_pos_control_state" :depends-on ("_package_drone_pos_control_state"))
    (:file "_package_drone_pos_control_state" :depends-on ("_package"))
    (:file "drone_pos_ctrl_cmd" :depends-on ("_package_drone_pos_ctrl_cmd"))
    (:file "_package_drone_pos_ctrl_cmd" :depends-on ("_package"))
  ))