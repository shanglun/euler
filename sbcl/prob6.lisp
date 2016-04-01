(defun sumsqr (max)
	(reduce #'+ (loop for i from 1 to max collect (* i i))))
	
(defun sqrsum (max)
	(let ((x (reduce #'+ (loop for i from 1 to max collect i))))
		(* x x)))

(defun calculate (max)
	(- (sqrsum max) (sumsqr max)))