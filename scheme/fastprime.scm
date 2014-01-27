#lang racket

(define (expmod base exp m)
  (define (square x) (* x x))
  (cond ((= 0 exp) 1)
        ((even? exp) (remainder (square (expmod base (/ exp 2) m)) 
                                m))
        (else (remainder (* base (expmod base (- exp 1) m)) 
                         m))))

(define (fermat? n)
  (define (prime-test a)
    (= a (expmod a n n)))
  (prime-test (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((fermat? n) (fast-prime? n (- times 1)))
        (else false)))
