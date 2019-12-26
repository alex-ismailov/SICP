#lang racket
(define (cons x y)
  (define (dispatch m)
    (cond ((= m 0) x)
          ((= m 1) y)
          (else (error "Аргумент не 0 или 1 -- CONS" m))))
  dispatch)

(define (car pair) (pair 0))
(define (cdr pair) (pair 1))

(define pair1 (cons 13 17))
(car pair1)
(cdr pair1)