
(cl:in-package :asdf)

(defsystem "swarm_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :nav_msgs-msg
               :std_msgs-msg
               :swarmtal_msgs-msg
)
  :components ((:file "_package")
    (:file "FisheyeFrameDescriptor" :depends-on ("_package_FisheyeFrameDescriptor"))
    (:file "_package_FisheyeFrameDescriptor" :depends-on ("_package"))
    (:file "ImageDescriptor" :depends-on ("_package_ImageDescriptor"))
    (:file "_package_ImageDescriptor" :depends-on ("_package"))
    (:file "LoopEdge" :depends-on ("_package_LoopEdge"))
    (:file "_package_LoopEdge" :depends-on ("_package"))
    (:file "LoopEdges" :depends-on ("_package_LoopEdges"))
    (:file "_package_LoopEdges" :depends-on ("_package"))
    (:file "node_detected" :depends-on ("_package_node_detected"))
    (:file "_package_node_detected" :depends-on ("_package"))
    (:file "node_detected_xyzyaw" :depends-on ("_package_node_detected_xyzyaw"))
    (:file "_package_node_detected_xyzyaw" :depends-on ("_package"))
    (:file "node_frame" :depends-on ("_package_node_frame"))
    (:file "_package_node_frame" :depends-on ("_package"))
    (:file "swarm_detected" :depends-on ("_package_swarm_detected"))
    (:file "_package_swarm_detected" :depends-on ("_package"))
    (:file "swarm_drone_basecoor" :depends-on ("_package_swarm_drone_basecoor"))
    (:file "_package_swarm_drone_basecoor" :depends-on ("_package"))
    (:file "swarm_drone_source_data" :depends-on ("_package_swarm_drone_source_data"))
    (:file "_package_swarm_drone_source_data" :depends-on ("_package"))
    (:file "swarm_frame" :depends-on ("_package_swarm_frame"))
    (:file "_package_swarm_frame" :depends-on ("_package"))
    (:file "swarm_fused" :depends-on ("_package_swarm_fused"))
    (:file "_package_swarm_fused" :depends-on ("_package"))
    (:file "swarm_fused_relative" :depends-on ("_package_swarm_fused_relative"))
    (:file "_package_swarm_fused_relative" :depends-on ("_package"))
    (:file "swarm_remote_command" :depends-on ("_package_swarm_remote_command"))
    (:file "_package_swarm_remote_command" :depends-on ("_package"))
  ))