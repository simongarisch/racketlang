#lang racket

; Racket values include numbers, booleans, strings, and byte strings

(define x 5.5)
(define y 4.5)
(+ x y)     ; 10
(number? x) ; #t
(number? y) ; #t
(printf "==========\n")

(define b1 #t)
(define b2 #f)
(number? b1)  ; #f
(boolean? b1) ; #t

(define s "MyString")
(string? s) ; #t
(string-append "rope" "twine" "yarn") ; "ropetwineyarn"
(substring "corduroys" 0 4) ; "cord"
(string-prefix? "shoelace" "shoe") ; #t
(string-suffix? "shoelace" "shoe") ; #f
