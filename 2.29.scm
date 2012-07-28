(define (fringe xs)
  (cond ((pair? xs) (list (fringe xs) :w)

(fringe (list (list 1 2) (list 3 4)))
