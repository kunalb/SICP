(define (tree-map tree function)
  (cond ((null? tree) `())
        ((not (pair? tree)) (function tree))
        (else (cons (tree-map (car tree) function)
                    (tree-map (cdr tree) function)))))
  
(define (plus-one x) (+ x 1))

(tree-map (list (list 1 2) 3) plus-one)
