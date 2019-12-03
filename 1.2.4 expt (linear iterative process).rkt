#lang racket
(define (expt b n)
  (define (iter acc n)
    (if (= n 0)
        acc
        (iter (* acc b)(- n 1))))
  (iter 1 n))