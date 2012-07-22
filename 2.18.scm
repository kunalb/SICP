(define (reverse xs)
  (define (reverse-iter xs rxs)
    (if (null? xs)
      rxs
      (reverse-iter (cdr xs) (cons (car xs) rxs))))
  (reverse-iter xs (list)))

(reverse (list 1 2 3))
