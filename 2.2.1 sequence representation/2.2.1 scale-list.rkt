#lang racket
(define (scale-list items factor)
  (if (null? items)
      null
      (cons (* (car items) factor)
            (scale-list (cdr items) factor))))

(define one-five (list 1 2 3 4 5))

(scale-list one-five 10)
(scale-list one-five 3)