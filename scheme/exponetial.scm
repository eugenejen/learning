;; recursive

(define (exp b n)
  (cond ((= n 0) 1.0)
        ((< n 0) (/ 1.0 (exp b (abs n))))
        (else (* b (exp b (- n 1.0))))))

;; iteration
(define (exp-iter b n)
  (define (exp-iter-iter b n prod)
    (cond ((= n 0) prod )
          (else (exp-iter-iter b (- n 1.0) (* prod b)))))
  (cond ((= n 0) 1.0)
        ((< n 0) (/ 1.0 (exp-iter b (abs n))))
        (else (exp-iter-iter b n 1.0))))

;; resue previous result
(define (exp-fast b n)
  (define (square n) (* n n))
  (define (even? n) (= 0 (remainder n 2)))
  (cond ((= n 0) 1.0)
        ((< n 0) (/ 1.0 (exp-fast b (abs n))))
        (else (if (even? n)
                  (square (exp-fast b (/ n 2.0)))
                  (* b (square (exp-fast b (/ (- n 1.0) 2.0))))))))
