# compute pascal triangle 

(define (compute-pascal-coeff n k)
  (cond ((<= n 0) 0)
        ((or (<= k 0) (> k n)) 0)
        ((= n 1) 1)
        (else (+ (compute-pascal-coeff (- n 1) (- k 1)) (compute-pascal-coeff (- n 1) k)))))