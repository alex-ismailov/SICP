#lang racket
(define (map proc items)
  (if (null? items)
      null
      (cons (proc (car items))
            (map proc (cdr items)))))

(define (identity x) x)

(define (square x)
  (* x x))

(define (cube x)
  (* x x x))

(define one-five (list 1 2 3 4 5))

(map identity one-five)
(map square one-five)
(map cube one-five)