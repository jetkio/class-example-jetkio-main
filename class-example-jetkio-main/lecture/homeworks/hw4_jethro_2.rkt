#|
LATE BECAUSE OF SURGERY-EXCUSED
   File:    hw4.rkt
   Author:  Jethro Kio-Michael
   Date:    11.23.24
   Section: 2
   E-mail:  jethrok1@umbc.edu
   Description:
   [We are supposed to implementing a Scheme program 
   that processes students' academic records and computes their GPA with a given formula]
|#
#lang racket
(require racket/trace)
#|Do not remove the following structure|#
(define record '(("Course" "Credits" "Grade")
                 ("CMSC 299" 2 "P")
                 ("CMSC 331" 3 87)
                 ("CMSC 341" 3 100)
                 ("CHEM 201" 4 "Incomplete")
                 ("PHYS 201" 4 77)
                 ("CMSC 491" "error" 100)
                 ("CMSC 441" 3 79)
                 ("CMSC 471" 3 68)
                 ("PHYS 121" 4 "U")
                 ("CMSC 203" 3 91)))

#|Implement your functions here|#
;; Helper function: Checks if a row has valid numbers for both Credit and Grade
(define (valid-row? row)
  (and (not (empty? row))
       (number? (cadr row))   
       (number? (caddr row)))) 

;; Recursive function for Total Grade Credit (TGC)
(define (calculate-TGC lst)
  (cond
    [(empty? lst) 0] ; Base case: empty list returns 0
    [(valid-row? (car lst)) 
     (+ (* (caddr (car lst)) (cadr (car lst))) 
        (calculate-TGC (cdr lst)))]            
    [else 
     (calculate-TGC (cdr lst))]))             

;;Recursive function for Total Credits (TC)
(define (calculate-TC lst)
  (cond
    [(empty? lst) 0] ; Base case
    [(valid-row? (car lst))
     (+ (cadr (car lst))           ; Add credit
        (calculate-TC (cdr lst)))] ; Recursive call
    [else
     (calculate-TC (cdr lst))])) 

;;Main function called calc
(define (calc r)
  (let ([data (cdr r)]) 
    (let ([tgc (calculate-TGC data)]
          [tc (calculate-TC data)])
      (if (zero? tc)
          0
          (~r (/ tgc tc) #:precision '(= 4))))))

#|Do not remove the following function call|#
(calc record)