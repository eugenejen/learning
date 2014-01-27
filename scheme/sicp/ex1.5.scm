(define (p) (p))
(define (test x y) (if (= x 0) 0 y)
(test 0 (p))

applicative-order-evaluation

(p) causes infinite loop

normal-order-evaluation

(test 0 (p)) => (if (= x 0) 0 y) => (if (= 0 0) 0 (p)) => 0