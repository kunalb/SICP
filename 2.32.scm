(define (subsets s)
  (if (null? s) (list `())
    (let ((rest (subsets (cdr s))))
      (append rest (map (lambda (x) 
                          (display x)
                          (cons (car s) x)) 
                        rest)))))

(subsets (list 1 2 3 4 5))
