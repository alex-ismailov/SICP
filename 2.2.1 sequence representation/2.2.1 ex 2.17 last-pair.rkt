#lang racket
(define (last-pair items)
  (if (null? (cdr items))
      items
      (last-pair (cdr items))))

(define one-three (list 1 2 3))
(define one-five (list 1 2 3 4 5))

(last-pair one-three)
(last-pair one-five)