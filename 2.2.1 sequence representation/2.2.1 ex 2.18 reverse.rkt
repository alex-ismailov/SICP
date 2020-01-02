#lang racket
(define (reverse items)
  (define (iter items acc)
    (if (null? items)
        acc
        (iter (cdr items) (cons (car items) acc))))
  (iter items (list)))

(define empty (list))
(define one (list 1))
(define one-five (list 1 2 3 4 5))

(reverse empty)
(reverse one)
(reverse one-five)