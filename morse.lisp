(defparameter *morse-mapping*
  '((#\A ".-")
    (#\B "-...")
    (#\C "-.-.")
    (#\, "--..--")
    (#\? "..--..")))

(defun character-to-morse (character)
  (second (assoc character *morse-mapping* :test #'char-equal)))

(defun morse-to-character (morse-string)
    (first (find morse-string *morse-mapping* :test #'string= :key #'cdr)))
