#lang racket

(define dt (seconds->date (current-seconds)))

(date-day dt)    ; 15
(date-month dt)  ; 1
(date-year dt)   ; 2022
(date-hour dt)   ; 20
(date-minute dt) ; 12
(date-second dt) ; 30

; https://docs.racket-lang.org/gregor/index.html
; Gregor is a date and time library for Racket
; raco pkg install gregor
(require gregor)

(datetime 1970) ; #<datetime 1970-01-01T00:00:00>
(datetime 1969 7 21 2 56) ; #<datetime 1969-07-21T02:56:00>

(define dt2 (datetime 2022 1 15))
(datetime? dt2) ; #t
(->year  dt2)   ; 2022
(->day   dt2)   ; 15
(->month dt2)   ; 1

(saturday? dt2) ; #t
(sunday?   dt2) ; #f

(+years  dt2 3)  ; #<datetime 2025-01-15T00:00:00>
(+days   dt2 3)  ; #<datetime 2022-01-18T00:00:00>
(+months dt2 3)  ; #<datetime 2022-04-15T00:00:00>

(parse-datetime "January 24, 1977" "LLLL d, y") ; <datetime 1977-01-24T00:00:00>
(parse-datetime "2015-03-15T02:02:02-04:00" "yyyy-MM-dd'T'HH:mm:ssxxx") ; #<datetime 2015-03-15T02:02:02>

(today)                                ; #<date 2022-01-15>
(current-time/utc)                     ; #<time 09:36:42.74372876>
(current-time #:tz "America/Chicago")  ; #<time 03:36:42.743977539>
(current-time #:tz "Australia/Sydney") ; #<time 20:36:42.744711182>
