(define (deep-reverse l)
  (cond ((pair? l) (append (deep-reverse (cdr l))
                           (list (deep-reverse (car l)))))
        ((null? l) `())
        (else l)))

(deep-reverse (list (list 1 2 3) (list 2 3 (list 3 4 5))))
