#lang racket
(define (fact n)
  (define (iter prod count)
    (if (= count 1)
      prod
      (iter (* prod count)(- count 1))))
  (iter 1 n))


