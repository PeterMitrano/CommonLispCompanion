(declaim (optimize (speed 0) (safety 3) (debug 3)))

(defun random-list
  (the-length)
  "returns list of random numbers of length n between 1 and 1000"
  (loop for ifrom 0 to the-length collect (random 1000)))

(defun insertion-sort
  (the-list)
  "returns the-list sorted in ascending order"
  (if the-list
    (insert-sorted
      (first the-list)
      (insertion-sort (rest the-list)))))

(defun insert-sorted
  (the-item the-list)
  "takes an element and a sorted list. Returns a sorted list with the element added"
  (if the-list
    (if (> the-item (first the-list))
      (cons (first the-list) (insert-sorted the-item (rest the-list)))
      (cons the-item the-list))
    (list the-item)))
