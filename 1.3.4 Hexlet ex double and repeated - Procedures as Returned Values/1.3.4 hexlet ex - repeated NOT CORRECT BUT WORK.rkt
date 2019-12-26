#lang racket
(define (square x) (* x x))
(define (inc x) (+ x 1))

(define (repeated fn n)
  (define (iter n count)
    (if (= count 0)
        n
        (iter (fn n) (- count 1))))
  (lambda (count) (iter n count)))