
(cl:in-package :asdf)

(defsystem "epic_planner-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GoalService" :depends-on ("_package_GoalService"))
    (:file "_package_GoalService" :depends-on ("_package"))
  ))