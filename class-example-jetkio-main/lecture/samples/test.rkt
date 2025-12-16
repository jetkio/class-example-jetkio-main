#lang racket
(define (calc x y)
  (let ((a 5)
        (b 10))
    (display "Original a: ") (display a) (newline)
    (let ((a (+ a b)))
      (display "New a: ") (display a) (newline)
      (+ a x y))))
(calc 2 3)