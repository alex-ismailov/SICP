#lang racket
(define (cons x y)
(lambda (m) (m x y)))

(define (car pair)
(pair (lambda (p q) p)))

(define (cdr pair)
(pair (lambda (p q) q)))

(define pair1 (cons 13 17))

(car pair1)
(cdr pair1 )