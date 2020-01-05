#lang racket
(define (map proc items)
  (define (iter currItems acc)
    (if (null? currItems)
        acc
        (iter (cdr currItems)
              (cons (proc (car currItems))
                    acc))))
  (iter items (list)))


(define (square x) (* x x))

(define one-five (list 1 2 3 4 5))

(map square one-five)