(defpackage #:rove-test-example/tests/test1
  (:use #:cl
        #:rove
        #:rove-test-example))
(in-package #:rove-test-example/tests/test1)

(deftest function-type-checks
  (ok (upcase-char #\a))
  (ok (upcase-char #\A))
  (ok (upcase-char #\1))
  (ok (signals (upcase-char "a")
               'type-error))
  (ok (signals (upcase-char 1)
               'type-error))
  (ok (downcase-char #\a))
  (ok (downcase-char #\A))
  (ok (downcase-char #\1))
  (ok (signals (downcase-char "a")
               'type-error))
  (ok (signals (downcase-char 1)
               'type-error)))
