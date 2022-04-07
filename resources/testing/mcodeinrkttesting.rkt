#lang racket

(require benchmark-ips)

(define (listn x) (build-list x (thunk* (random 100000000))))

(define listnn (listn n))

(benchmark/ips "(size = n)" (merge-sort listnn))
