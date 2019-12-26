#lang racket
(define (inc x) (+ x 1))
(define (square x) (* x x))

(define (repeated fn count)
  (define (iter n count)
    (if (= count 0)
        n
        (iter (fn n) (- count 1))))
  (lambda (n)(iter n count)))