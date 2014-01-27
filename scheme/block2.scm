#lang racket
;; scope rule and closure

(define(sqrt x)
  (define (square x) (* x x))
  (define (good-enough? guess last-guess)
    (< (abs (- guess last-guess)) (* 0.00000001 last-guess)))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (average x y)
    (/ (+ x y) 2))
  (define (sqrt-iter guess last-guess)
    (if (good-enough? guess last-guess)
        guess
        (sqrt-iter (improve guess)
                   guess)))
(sqrt-iter 1.0 x))

(sqrt 1e308)
(sqrt 1e-308)
