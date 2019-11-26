#lang racket
(define (fact n)
  (define (iter prod count)
    (if (> count n)
        prod
        (iter (* prod count)(+ count 1))))
  (iter 1 1))