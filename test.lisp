;;; test.lisp
;;; this file is for random stuff I want to test

(defun days-in-month (month)
  (cond ((eq 'february month) 28)
        ((member month (list 'september 'april 'june 'november)) 30)
        (t 31)))

(write (days-in-month 'september))
