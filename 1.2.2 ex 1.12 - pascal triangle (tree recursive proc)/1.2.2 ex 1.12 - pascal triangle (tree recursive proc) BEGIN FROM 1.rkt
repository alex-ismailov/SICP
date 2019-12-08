#lang racket
(define (pascal-triangle m k)
  (if(or (= k 1)(= k m))
     1
     (+ (pascal-triangle (- m 1) (- k 1))
        (pascal-triangle (- m 1) k))))