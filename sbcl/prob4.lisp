(defun first-char (str)
	(aref str 0))

(defun last-char (str)
	(aref str (- (length str) 1)))
	
(defun remove-head-tail (str)
	(subseq str 1 (- (length str) 1)))
	
(defun palind? (str)
	(if (< (length str) 2) T
		(and (char=  (first-char str) (last-char str))
			(palind? (remove-head-tail str)))))

(defun npalind? (num) (palind? (write-to-string num)))

(defun three-digs? (num) (= 3 (length (write-to-string num))))

(defun find-palsums ()
	(let ((x 999) (max 0))
		(loop while (three-digs? x) do
			(let ((y 999))
				(loop while (three-digs? y) do
					(let ((prod (* x y)))
						(if (and (npalind? prod) (> prod max)) (setq max prod)))
					(setq y (- y 1))))
			(setq x (- x 1)))
		max))
		
(print (find-palsums))
				