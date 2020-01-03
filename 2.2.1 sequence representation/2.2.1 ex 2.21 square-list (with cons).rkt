#lang racket
(define (square-list items)
  (if (null? items)
      null
      (cons (square (car items))
            (square-list (cdr items)))))

(define (square x) (* x x))

(define one-five (list 1 2 3 4 5))

(square-list one-five)