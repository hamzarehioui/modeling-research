#lang racket

(define (bsort-inner lst)
  (let loop ((lst lst) (res null))
    (let ((ca1 (car lst)) (cd1 (cdr lst)))
      (if (null? cd1)
          (values res ca1)
          (let ((ca2 (car cd1)) (cd2 (cdr cd1)))
            (if (<= ca1 ca2)
                (loop cd1 (cons ca1 res))
                (loop (cons ca1 cd2) (cons ca2 res))))))))

(define (bsort lst)
  (let loop ((lst lst) (res null))
    (if (null? lst)
        res
        (let-values (((ls mx) (bsort-inner lst)))
          (loop ls (cons mx res))))))