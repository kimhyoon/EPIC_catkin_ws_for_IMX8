
(cl:in-package :asdf)

(defsystem "swarmcomm_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "data_buffer" :depends-on ("_package_data_buffer"))
    (:file "_package_data_buffer" :depends-on ("_package"))
    (:file "drone_network_status" :depends-on ("_package_drone_network_status"))
    (:file "_package_drone_network_status" :depends-on ("_package"))
    (:file "incoming_broadcast_data" :depends-on ("_package_incoming_broadcast_data"))
    (:file "_package_incoming_broadcast_data" :depends-on ("_package"))
    (:file "remote_uwb_info" :depends-on ("_package_remote_uwb_info"))
    (:file "_package_remote_uwb_info" :depends-on ("_package"))
    (:file "swarm_network_status" :depends-on ("_package_swarm_network_status"))
    (:file "_package_swarm_network_status" :depends-on ("_package"))
  ))