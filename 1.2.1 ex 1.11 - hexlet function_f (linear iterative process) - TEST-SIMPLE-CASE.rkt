#lang racket
(define (f n)
  (define (iter a b c count)
  (if(= count 0)
     a
     (iter (+ a b c) a b (- count 1))))
  (iter 2 1 0 (- n 2)))