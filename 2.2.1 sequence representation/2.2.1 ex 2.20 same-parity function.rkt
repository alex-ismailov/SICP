#lang racket
(define (same-parity f-val . oth-vals)
  (define (accept-parity? value)
    (equal? (even? f-val) (even? value)))
  (define (filter-parity values)
    (cond ((null? values) null)
          ((accept-parity? (car values))
           (cons (car values)
                 (filter-parity (cdr values))))
          (else (filter-parity (cdr values)))))
  (cons f-val (filter-parity oth-vals)))


(same-parity 1 2 3 4 5 6)
(same-parity 2 3 4 5 6 7)