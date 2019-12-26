#lang racket
(define (average a b)
  (/ (+ a b) 2))

(define tolerance 0.00001)

(define (fixed-point f first-guess)
  (define (clouse-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (clouse-enough? guess next)
          next
          (try next))))
  (try first-guess))

(define (sqrt x)
  (fixed-point (lambda (y) (average y (/ x y)))
               1.0))