#lang racket
(define (length items)
  (define (iter items count)
    (if (null? items)
        count
        (iter (cdr items) (+ count 1))))
  (iter items 0))

(define one-five (list 1 2 3 4 5))

(length one-five)