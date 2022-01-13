#lang racket

#|
    The FizzBuzz problem is a classic test given in coding interviews.
    The task is simple: Print integers 1 to N,
    but print "Fizz" if an integer is divisible by 3,
    "Buzz" if an integer is divisible by 5,
    and "FizzBuzz" if an integer is divisible by both 3 and 5.
|#

(define (fizzbuzz x)
    (define div3 (zero? (remainder x 3)))
    (define div5 (zero? (remainder x 5)))
    
    (cond
        [(and div3 div5) "FizzBuzz"]
        [div3 "Fizz"]
        [div5 "Buzz"]
        [else x]
    )
)

(map fizzbuzz (inclusive-range 1 20))