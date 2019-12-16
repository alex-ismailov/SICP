#lang racket
(define (average a b) (/ (+ a b) 2))
(define (positive? n)
  (if (> n 0) true false))
(define (negative? n)
  (if (< n 0) true false))
(define (clouse-enough? neg-p pos-p)
  (< (abs (- neg-p pos-p)) 0.001))

(define (search f neg-point pos-point)
  (let ((midpoint (average neg-point pos-point)))
    (if (clouse-enough? neg-point pos-point)
        midpoint
        (let ((test-value (f midpoint)))
          (cond ((positive? test-value)
                 (search f neg-point midpoint))
                ((negative? test-value)
                 (search f midpoint pos-point))
                (else midpoint))))))

(define (half-interval-method f a b)
  (let ((a-val (f a))
        (b-val (f b)))
    (cond ((and (negative? a-val) (positive? b-val))
           (search f a b))
          ((and (negative? b-val) (positive? a-val))
           (search f b a))
          (else
           (error "Values are not of opposite sign" a b)))))