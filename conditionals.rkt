#lang racket

(if (> 2 3)
    "2 is bigger than 3"
    "2 is smaller than 3"
)
; "2 is smaller than 3"

(define (reply s)
    (if (string-prefix? s "hello ")
        "hi!"
        "huh?"
    )
)

(reply "hello racket") ; "hi"
(reply "thwer asdgff") ; "huh?"


(define (reply-non-string s)
  (if (string? s)
      (if (string-prefix? s "hello ")
          "hi!"
          "huh?"
      )
      "huh?"
  )
)

; we can make this more readable
(define (reply-non-string2 s)
  (if (and (string? s) (string-prefix? s "hello "))
      "hi!"
      "huh?"
  )
)
