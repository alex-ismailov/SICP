#lang racket
(define (fact n)
  (if (= n 1)
      n
      (* n (fact (- n 1)))))