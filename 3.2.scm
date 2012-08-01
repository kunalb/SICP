(define (make-monitored f)
  (let ((calls 0))
    (define (dispatch input)
      (cond ((eq? input `how-many-calls?) calls)
            ((eq? input `reset-counter) (set! calls 0))
            (else (begin (set! calls (+ calls 1))
                         (f input)))))
    dispatch))
    
