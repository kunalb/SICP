(define (filter-list xs keep?)
  (define (filter-list-iter as bs) 
    (cond 
      ((null? as) bs)
      ((keep? (car as)) (filter-list-iter (cdr as) (append bs (list (car as)))))
      (else (filter-list-iter (cdr as) bs))))
  (filter-list-iter xs `()))

(define (same-parity . xs)
  (if (null? xs) 
    `()
     (let ((parity (bitwise-and (car xs) 1)))
       (filter-list xs (lambda (x) (= (bitwise-and x 1) parity))))))

(same-parity 2 1 3 4)
