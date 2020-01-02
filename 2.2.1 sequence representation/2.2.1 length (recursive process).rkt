#lang racket
(define (length items)
  (if (null? items)
      0
      (+ 1 (length (cdr items)))))

(define one-five (list 1 2 3 4 5))

(length one-five)
