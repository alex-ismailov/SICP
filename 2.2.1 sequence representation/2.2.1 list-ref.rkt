#lang racket
(define (list-ref items n)
  (if (= n 0)
      (car items)
      (list-ref (cdr items) (- n 1))))

(define one-five (list 1 2 3 4 5))

(list-ref one-five 1)
(list-ref one-five 4)