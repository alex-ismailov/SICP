#lang racket
(define (func n)
  (iter 1 2 3 n))
(define (iter a b c count)
  (if (= count 0)
      c
      (iter (* 3 (+ a b c))
            (* 2 (+ a b))
            a
            (- count 1))))