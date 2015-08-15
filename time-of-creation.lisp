;;;Exercise 4.3
;;;
;;;Define a property on a symbol called time-of-creation
;;;insert the current time as that value

(defun mark-time
  (the-symbol)
  "addes a time-of-creation property with current time in seconds since 1900"
  (setf (get the-symbol 'time-of-creation) (get-universal-time)))
