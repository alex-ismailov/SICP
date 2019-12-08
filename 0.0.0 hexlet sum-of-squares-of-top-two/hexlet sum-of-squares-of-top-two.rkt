#lang racket
(define (sum-of-squares-of-top-two a b c)
  (define (square x)
    (* x x))
  (define (sumOfSquares x y)
    (+ (square x)(square y)))
  (cond ((and (<= a b)(<= a c)) (sumOfSquares b c))
        ((and (<= b a)(<= b c)) (sumOfSquares a c))
        ((and (<= c a)(<= c b)) (sumOfSquares a b))))

