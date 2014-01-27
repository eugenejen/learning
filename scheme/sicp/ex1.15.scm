# approixmaiton for sine

(define (sine angle)
  (define (cube x) (* x x x))
  (define (p x) (- (* 3 x) (* 4 (cube x))))
  (cond ((< angle 0.1) angle)
        (else (p (sine (/ angle 3.0))))))

# angle = 12.15

(sine 12.15) => (p (sine 4.05)) => (p (p (sine 1.35)) => (p (p (p (sine 0.45)))) 
=> (p (p (p (p (sine 0.15))))) => (p (p (p (p (p (sine 0.05))))))

# p is applied for 5 times.

# the space and number of step is proportional to log(3, a/0.1) 