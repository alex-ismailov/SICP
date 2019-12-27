#lang racket
(define (cons a b)
  (* (expt 2 a) (expt 3 b)))

(define (getValue n base pow)
  (if (= (remainder n base) 0)
      (getValue (/ n base) base (+ pow 1))
      pow))

(define (car n) (getValue n 2 0))
(define (cdr n) (getValue n 3 0))

(car (cons 10000 10000))
(cdr (cons 10000 10000))

