# multiplication by adding in natural number

(define (nat-mul a b)
  (if (= b 0) 0
      (+ a (nat-mul a (- b 1)))))

(define (nat-mul-fast a b)
  (define (double x) (+ x x))
  (define (even? n) (= 0 (remainder n 2)))
  (define (halve n) (if (even? n) (/ n 2) (/ (- n 1) 2)))
  (define (nat-mul-fast-iter a b s)
    (cond ((= b 0) 0)
          ((= b 1) (+ a s))
          (else (if (even? b) 
                    (nat-mul-fast-iter (double a) (halve b) s)
                    (nat-mul-fast-iter (double a) (halve (- b 1)) (+ s a))))))
  (nat-mul-fast-iter a b 0))