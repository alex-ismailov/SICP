#lang racket
(define x (cons 1 2))

(define (make-rat x y) (cons x y))
(define (numer q) (car q))
(define (denom q) (cdr q))

(define (add-rat x y)
  (make-rat (+ (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (sub-rat x y)
  (make-rat (- (* (numer x) (denom y))
               (* (numer y) (denom x)))
            (* (denom x) (denom y))))

(define (mul-rat x y)
  (make-rat (* (numer x) (numer y))
            (* (denom x) (denom y))))

(define (div-rat x y)
  (make-rat (* (numer x) (denom y))
            (* (numer y) (denom x))))

(define (equal-rat x y)
  (= (* (numer x) (denom y))
     (* (numer y) (denom x))))

(define (print-rat x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x)))


(print-rat (add-rat (make-rat 1 2) (make-rat 3 2)))
(print-rat (sub-rat (make-rat 3 2) (make-rat 1 2)))
(print-rat (mul-rat (make-rat 3 2) (make-rat 1 2)))
(print-rat (div-rat (make-rat 3 2) (make-rat 1 2)))
(newline)
(equal-rat (make-rat 3 2) (make-rat 1 2))
(equal-rat (make-rat 3 2) (make-rat 3 2))