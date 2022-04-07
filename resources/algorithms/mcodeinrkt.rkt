#lang racket

(define (merge as bs)
  (match* (as bs)
    [((list) bs)  bs]
    [(as (list))  as]
    [((list a as ...) (list b bs ...))
     (if (< a b)
         (cons a (merge as (cons b bs)))
         (cons b (merge (cons a as) bs)))]))

(define (merge-sort vs)
  (match vs
    [(list)  vs]
    [(list a)  vs]
    [_  (define-values (lvs rvs)
          (split-at vs (quotient (length vs) 2)))
        (merge (merge-sort lvs) (merge-sort rvs))]))
