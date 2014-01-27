#lang racket
;; Tree recursive fib definition

(define (fib n) 
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib (- n 1))
                 (fib (- n 2))))))

;; Iterative fib 

(define (fib-iter n)
  (define (fib-iter-iter fib-n-1 fib-n-2 n) 
    (cond ((= n 0) fib-n-2)
          (else (fib-iter-iter (+ fib-n-1 fib-n-2) fib-n-1 (- n 1)))))
  (fib-iter-iter 1 0 n))
