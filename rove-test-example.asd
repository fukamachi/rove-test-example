(defsystem "rove-test-example"
  :pathname "src"
  :components
  ((:file "main"))
  :in-order-to ((test-op (test-op "rove-test-example/tests"))))

(defsystem "rove-test-example/tests"
  :depends-on ("rove-test-example"
               "rove")
  :components
  ((:module "tests"
    :components ((:file "test1")
                 (:file "test2"))))
  :perform (test-op (op c) (symbol-call :rove '#:run c)))
