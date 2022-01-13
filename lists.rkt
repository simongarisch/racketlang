#lang racket

(list "red" "green" "blue") ; '("red" "green" "blue")
(list 1 2 3 4 5) ; '(1 2 3 4 5)

(length (list "hop" "skip" "jump")) ; 3
(list-ref (list "hop" "skip" "jump") 0) ; "hop"
(list-ref (list "hop" "skip" "jump") 1) ; "skip"
(append (list "hop" "skip") (list "jump")) ; '("hop" "skip" "jump")
(reverse (list "hop" "skip" "jump")) ; '("jump" "skip" "hop")
(member "fall" (list "hop" "skip" "jump")) ; #f

(map sqrt (list 1 4 9 16)) ; '(1 2 3 4)

(map 
    (lambda (i) (string-append i "!"))
    (list "peanuts" "popcorn" "crackerjack")
)
; '("peanuts!" "popcorn!" "crackerjack!")

(andmap string? (list "a" "b" "c")) ; #t
(andmap string? (list "a" "b" 6)) ; #f
(ormap number? (list "a" "b" 6)) ; #t

(map (lambda (s n) (substring s 0 n))
       (list "peanuts" "popcorn" "crackerjack")
       (list 6 3 7))
; '("peanut" "pop" "cracker")

(filter string? (list "a" "b" 6)) ; '("a" "b")
(filter positive? (list 1 -2 6 7 0)) ; '(1 6 7)

(foldl (lambda (elem v)
           (+ v (* elem elem)))
         0
         '(1 2 3))
; 14
