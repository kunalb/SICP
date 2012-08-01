;slight variation on the original

(define (make-f)
  (let ((calls 0) 
        (initial-call `nil))
    (lambda (x) 
      (if (= 0 calls) (begin (set! calls 1)
                             (set! initial-call x)
                             x)
          initial-call))))

(define f (make-f))
