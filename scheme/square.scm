#lang racket
(define (square x) (* x x))

(define (square-2 x) (exp (double (log x))))

(define (double x) (+ x x))

(define (square-3 y) (* y y))