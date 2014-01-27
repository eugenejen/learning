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

(define runtime current-milliseconds)

(define (timed-prime-test n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (cond ((prime? n) (report-prime n (- (runtime) start-time)))))
  
(define (report-prime n elasped-time)
  (newline)
  (display n)
  (display " *** ")
  (display elasped-time))
  
(define (search-for-prime lower higher)
  (define (search-for-prime-iter n)
    (timed-prime-test n)
    (cond ((and (<= lower n) (<= n higher)) (search-for-prime-iter (+ n 1)))))
  (search-for-prime-iter lower))