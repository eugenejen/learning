(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))
(define (square x) (* x x))
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.00000001))
(define (improve guess x) 
  (average guess (/ x guess)))
(define (average x y) 
  (/ (+ x y) 2.0))
(define (sqrt-iter guess x) 
  (new-if (good-enough? guess x) 
      guess 
      (sqrt-iter (improve guess x) 
                 x)))
(define (sqrt x) (sqrt-iter 1.0 x))
(sqrt 4)

# infinite loop, due to repeated applicative-evaluation-order in new-if