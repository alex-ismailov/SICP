#lang racket
(define (inc x) (+ x 1))
(define (square x) (* x x))

(define (compose f g)
 (lambda (x) (f (g x))))

(define (repeated f x)
  (if (= x 1)
      f
      (compose f (repeated f (- x 1)))))