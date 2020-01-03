#lang racket
(define (square-list items)
  (define (iter things answer)
    (if (null? things)
        answer
        (iter (cdr things)
              (append answer
                      (list (square (car things)))))))
  (iter items null))

(define (append items1 items2)
  (if (null? items1)
      items2
      (cons (car items1) (append (cdr items1) items2))))

(define (square x) (* x x))

(define one-five (list 1 2 3 4 5))

(square-list one-five)