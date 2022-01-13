#lang racket

(define (bake flavor)
    (printf "preheating oven...\n")
    (string-append flavor " pie")
)

(bake "apple")
;preheating oven...
;"apple pie"


(define (add x y)
    (+ x y)
)

(add 1 2)
; 3
