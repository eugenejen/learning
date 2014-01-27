#lang racket
;; GCG 

(define (GCD a b)
  (if (= 0 (remainder a b))
      b
      (GCD b (remainder a b))))

;; Count steps to get GCD
(define (GCD-step a b step)
  (if (= 0 (remainder a b))
      step
      (GCD-step b (remainder a b) (+ 1 step))))

