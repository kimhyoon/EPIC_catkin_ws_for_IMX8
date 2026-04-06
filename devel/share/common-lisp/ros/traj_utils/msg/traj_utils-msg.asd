
(cl:in-package :asdf)

(defsystem "traj_utils-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PolyTraj" :depends-on ("_package_PolyTraj"))
    (:file "_package_PolyTraj" :depends-on ("_package"))
  ))