#lang racket
;; tree recursion version
(define (f-r n) 
  (cond ((< n 0) 0)
        ((and (> n 0) (< n 3)) n)
        (else (+ (f-r (- n 1)) (* 2 (f-r (- n 2))) (* 3 (f-r (- n 3)))))))

;; iterative version, passing down previous value via args
(define (f-i n)
  (define (f-iter f-n-3 f-n-2 f-n-1 n)
    (cond ((= n 0) f-n-3)
          (else (f-iter f-n-2 
                        f-n-1 
                        (+ f-n-1 
                           (* 2 f-n-2) 
                           (* 3 f-n-3)) 
                        (- n 1)))))
  (f-iter 0 1 2 n))
