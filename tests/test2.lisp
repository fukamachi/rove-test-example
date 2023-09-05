(defpackage #:rove-test-example/tests/test2
  (:use #:cl
        #:rove
        #:rove-test-example))
(in-package #:rove-test-example/tests/test2)

(deftest check-results
  (ok (char= (upcase-char #\a) #\A))
  (ok (char= (downcase-char #\A) #\a))
  (ok (char= (upcase-char #\1) #\1))
  (ok (char= (downcase-char #\1) #\1)))
