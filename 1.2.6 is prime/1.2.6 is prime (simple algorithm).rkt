#lang racket
(define (prime? n)
  
  (define (square n) (* n n))
  
  (define (smallest-divisor n)
    (find-divisor n 2))
  
  (define (divides? n td)
    (= (remainder n td) 0))
  
  (define (find-divisor n test-divisor)
    (cond ((> (square test-divisor) n) n)
          ((divides? n test-divisor) test-divisor)
          (else (find-divisor n (+ test-divisor 1)))))
  
  (= n (smallest-divisor n)))
