#lang racket
(define (make-interval a b)
  (cons a b))

(define (lower-bound interval)
  (car interval))

(define (upper-bound interval)
  (cdr interval))

(define (print-interval x)
  (display "(")
  (display (lower-bound x))
  (display "; ")
  (display (upper-bound x))
  (display ")")
  (newline))

(define (add-interval x y)
  (make-interval(+ (lower-bound x) (lower-bound y))
                (+ (upper-bound x) (upper-bound y))))

(define (mul-interval x y)
  (let ((p1 (* (lower-bound x) (lower-bound y)))
        (p2 (* (lower-bound x) (lower-bound y)))
        (p3 (* (upper-bound x) (lower-bound y)))
        (p4 (* (upper-bound x) (upper-bound y))))
    (make-interval (min p1 p2 p3 p4)
                   (max p1 p2 p3 p4))))

(define (div-interval x y)
  (mul-interval x
                (make-interval (/ 1.0 (upper-bound y))
                               (/ 1.0 (lower-bound y)))))


(define int1 (make-interval 6.12 7.48))
(define int2 (make-interval 4.46 4.93))

(print-interval int1)
(print-interval int2)
