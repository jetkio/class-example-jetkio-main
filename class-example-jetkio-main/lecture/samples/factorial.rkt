#lang racket

(define (factorial n)
  (if (= n 0)
      1
      (* n (factorial (- n 1)))))

;; Example usage:
(displayln "Enter a number:")
(define input (read))
(displayln (string-append "Factorial is: " (number->string (factorial input))))
#|
You can write multi level
Comment in this
|#

(define (factorial-tail n acc)
  (
    if (= n 0)
    acc
    (factorial-tail (- n 1)(* acc n))
    )
  )