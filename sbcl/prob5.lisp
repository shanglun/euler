(defun calculate (max)
	(reduce #'(lambda (x y) (/ (* x y) (gcd x y)))
		(reverse (loop for i from 1 to max collect i))))
		
(defun answer ()
	(calculate 20))
				