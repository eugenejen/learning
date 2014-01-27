#lang racket

(define (find-smallest-divisor n)
  (find-divisor n 2))

;; find anything under sqrt(n), if no divisor found, return n 
(define (find-divisor n test-divisor)
  (define (square x) (* x x))
  (define (devides? a b) (= 0 (remainder a b)))
  (cond ((devides? n test-divisor) test-divisor)
        ((> (square test-divisor) n) n)
        (else (find-divisor n (+ 1 test-divisor)))))

;; prime is the number who's smallest non 1 divisor is itself
(define (prime? n) (= n (find-smallest-divisor n)))

(find-smallest-divisor 199)
(find-smallest-divisor 1999)
(find-smallest-divisor 19999)