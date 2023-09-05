(defpackage #:rove-test-example
  (:use #:cl)
  (:export #:upcase-char
           #:downcase-char))
(in-package #:rove-test-example)

(defun upcase-char (char)
  (check-type char character)
  (cond
    ((char<= #\a char #\z)
     (code-char
      (+ (char-code char)
         #.(- (char-code #\a) (char-code #\A)))))
    (t char)))

(defun downcase-char (char)
  (cond
    ((char<= #\A char #\Z)
     (code-char
      (+ (char-code char)
         #.(- (char-code #\a) (char-code #\A)))))
    (t char)))
