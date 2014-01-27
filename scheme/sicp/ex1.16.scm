# fast exponetial iteration version

(define (exp-fast-iter b n)
 (define (exp-fast-iter-iter b n a)
    (define (square x) (* x x))
    (define (even? x) (= 0 (remainder x 2)))
    (if (= n 1) (* b a)
        (if (even? n) 
            (exp-fast-iter-iter (square b) (/ n 2.0) a)
            (exp-fast-iter-iter (square b) (/ (- n 1.0) 2.0) (* a b)))))
  (cond ((= n 0) 1.0)
        ((< n 0) (/ 1.0 (exp-fast-iter b (abs n))))
        (else (exp-fast-iter-iter b n 1.0))))