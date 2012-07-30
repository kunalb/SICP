(define  (enumerate-interval a b)
  (if (<= a b) (cons a (enumerate-interval (+ a 1) b)) `()))

(define (generate-tuples n limit)
  (define (add-ints xs)
    (reduce append 
            `()
            (map (lambda (x) 
                         (map (lambda (y) (cons y x)) 
                              (enumerate-interval 0 (car x))))
                 xs)))
  (define (add-ints-iter i ls)
    (if (> i 0) (add-ints-iter (- i 1) (add-ints ls)) ls))

  (add-ints-iter (- n 1) (map list (enumerate-interval 0 limit))))

(define (generate-special-tuples size limit acceptable?)
  (filter acceptable? (generate-tuples size limit)))
  
(define (generate-sum-tuples n sum)
  (generate-special-tuples n sum (lambda (x) (= (reduce + 0 x) sum))))

;(generate-sum-tuples 2 10)

; Interesting things

(define (count-sum-tuples n sum)
  (length (generate-sum-tuples n sum)))

(define (generate-test-tuples x-limit y-limit)
  (reduce append
          `()
          (map (lambda (x)
                       (map (lambda (y) (list x y))
                            (enumerate-interval 0 y-limit)))
               (enumerate-interval 1 x-limit))))

(define (generate-test-data x-limit y-limit)  
  (map (lambda (point) 
               (let ((size (car point))
                     (sum (cadr point)))
                 (list size sum (count-sum-tuples size sum))))
       (generate-test-tuples x-limit y-limit)))

(load-option 'format)

(define output (open-output-file "2.41.txt"))

(define (pretty-print data)
  (map (lambda (x)
               (format output "~10S" x))
       data)
  data)
  

(define (graph-print data)
  (newline output)
  (format output "~10A~10A~10A" "Size" "Sum" "Tuples")
  (map (lambda (x) 
               (newline output)
               (pretty-print x)) 
       data))

(graph-print (generate-test-data 10 10))

(close-output-port output)
