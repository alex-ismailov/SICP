#lang racket
(define (append items1 items2)
  (if (null? items1)
      items2
      (cons (car items1) (append (cdr items1) items2))))

(define one-three (list 1 2 3))
(define four-six (list 4 5 6))

(append one-three four-six)