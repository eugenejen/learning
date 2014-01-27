# Define a procedure that takes three numbers as arguments 
# and returns the sum of the squares of the two larger num- bers.

(define (sum-of-square-of-larger-two-out-of-three x y z)
  (cond ((and (<= z x) (<= z y)) (+ (* x x) (* y y) ))
        ((and (<= y x) (<= y z)) (+ (* x x) (* z z)))
        ((and (<= x y) (<= x z)) (+ (* y y) (* z z))))
  )