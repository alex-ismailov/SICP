#lang racket
(define (square x) (* x x))
(define (inc x) (+ x 1))

(define (double fn)
    (lambda (x) (fn (fn x))))