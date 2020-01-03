#lang racket
(define (scale-list items factor)
  (map (lambda (x) (* x factor))
       items))

(define (map proc items)
  (if (null? items)
      null
      (cons (proc (car items))
            (map proc (cdr items)))))

(define one-five (list 1 2 3 4 5))

(scale-list one-five 2)
(scale-list one-five 3)