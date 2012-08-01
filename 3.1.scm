(define (make-accumulator base-value)
  (lambda (additional-value)
    (begin (set! base-value (+ base-value additional-value))
           base-value)))
