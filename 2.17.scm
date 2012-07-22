(define (last-pair xs)
  (if (null? xs)
    nil
    (if (null? (cdr xs))
      xs
      (last-pair (cdr xs)))))
    
(last-pair (list 1 2 3 4))
