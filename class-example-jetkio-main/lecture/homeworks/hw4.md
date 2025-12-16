# Homework 4 – UMBC – CMSC 331 – Fall 2025

**Due Date:** Nov 28, 11:59 PM

## Academic Integrity Notice

We often search the Internet. 
- If this homework is found online even briefly, it will be treated as an academic integrity violation.  
- In such a case, the assignment will be void for this course, and its weight will be redistributed across other evaluation items.

## Overview

This assignment involves implementing a Scheme program that processes students' academic records and computes their GPA. 
- The program must consist of multiple functions.



## GPA Formula

Use the following formula to compute GPA: $GPA = TGC / TC$

Where:
- `TGC` = Total Grade Credit = ∑ (grade × credit)
- `TC`  = Total Credits = ∑ (credit)

Note: This is not necessarily the same formula used by your school. 
- Follow the specifications in this assignment.

## Assignment Tasks

1. Implement a recursive function that receives a student’s record as input and returns the total grade-credit value (∑ grade × credit).
2. Implement a recursive function that receives a student’s record as input and returns the total number of credits.
3. Implement the main function called `calc`:
   - Receives the student’s record as input
   - Returns the student’s GPA
   - Must call the TGC and TC functions internally
   - Do not modify or remove the call to this function at the bottom of the template file
4. You may implement any additional helper functions as needed.

## Requirements

- Output must be formatted with exactly 4 decimal points
- Output must be a returned value, not printed to the standard output
- All courses in the record that do not provide numerical values for grade and credits must be ignored in the calculations
- You are not allowed to use the built-in `list-ref` function

## Submission
I provided a `hw4.rkt` file: 
- you need to rename it `hw4_<first_name>_<section##>.rkt`
- For instance: `hw4_zelalem_03.rkt`
- You submit this assignment by commiting and pushing 

You must provide header comment in your racket code
```scheme
#|
   File:    [FILENAME].rkt
   Author:  [YOUR NAME]
   Date:    [THE DATE]
   Section: [YOUR DISCUSSION SECTION NUMBER]
   E-mail:  [YOUR_EMAIL]@umbc.edu
   Description:
   [DESCRIPTION OF WHAT THE PROGRAM DOES]
|#
```