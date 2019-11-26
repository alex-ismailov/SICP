#lang racket
(define (fact n)
  (define (iter prod count)
    (if (= count 0)
      prod
      (iter (* prod count)(- count 1))))
  (iter 1 n))


