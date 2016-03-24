(defun get-three-five (num)
	(cond ((= num 0) 0)
		  ((or (= (mod num 5) 0) (= (mod num 3) 0)) 
			  (+ num (get-three-five (- num 1))))
		  (T (get-three-five (- num 1)))))
		  
(print (get-three-five 999))
		  
