#lang r5rs
(display "Factorial of 5 is: ")
(define (factorial n)
  (if (= n 0)
      1
      (* n (factorial (- n 1)))))
(display (factorial 5))
(newline)