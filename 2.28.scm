(define (fringe l)
  (cond ((pair? l) (append (fringe (car l)) (fringe (cdr l))))
        ((null? l) `())
        (else (list l))))

(define x (list (list 1 2) (list 3 4)))
(fringe (list x x))
