(defun even-fib (prev cur sum)
  (if (> cur 4000000) sum
    (even-fib cur (+ prev cur) (if (evenp cur) (+ sum cur) sum))))
	
(print (even-fib 0 1 0))
