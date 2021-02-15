(defsystem "utils"
  :version "0.1.0"
  :author "icot"
  :license "GPLv3"
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description ""
  :in-order-to ((test-op (test-op "utils/tests"))))

(defsystem "utils/tests"
  :author "icot"
  :license "GPLv3"
  :depends-on ("utils"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for utils"
  :perform (test-op (op c) (symbol-call :rove :run c)))
