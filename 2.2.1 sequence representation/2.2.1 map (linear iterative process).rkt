#lang racket
(define (append items1 items2)
  (if (null? items1)
      items2
      (cons (car items1)
            (append (cdr items1) items2))))

(define (map proc items)
  (define (iter currItems acc)
    (if (null? currItems)
        acc
        (iter (cdr currItems)
              (append acc
                      (list (proc (car currItems)))))))
  (iter items (list)))


(define (square x) (* x x))
(define one-five (list 1 2 3 4 5))

(append (list) (list 3))

(map square one-five)