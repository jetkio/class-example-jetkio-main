#lang racket

#|
    File:    [FILENAME].rkt
    Author:  [YOUR NAME]
    Date:    [THE DATE]
    Section: [YOUR DISCUSSION SECTION NUMBER]
    E-mail:  [YOUR_EMAIL]@umbc.edu
    Description:
    [DESCRIPTION OF WHAT THE PROGRAM DOES]
|#

#|****************************************************************************************
    - Activity 5 
        - Complete at least 6 questions from the 1–10, 11–20, and 21–30 question groups.
        - Commit and push this to your repo
            - Commit and push after completing each function


    >> Side note: Scheme uses kebab-case
    >> Due is avaliable on Blackboard
    >> rename activity_5.rkt with activity_5_<first_name>_<section#>.rkt
    >>>>>>> For instance, activity_5_zelalem_03.rkt
****************************************************************************************|#

#|-------------------------------------------------------------------------------
1. Write a function that takes an input as the radius of a disk and returns the area of the disk?
--------------------------------------------------------------------------------|#
; your code below

#|-------------------------------------------------------------------------------
2. Write a function that takes two input values as radiuses of two disks and uses
    the previous function to calculate the area of the donut constructed from
    the two disks.
--------------------------------------------------------------------------------|#
; your code below

#|-------------------------------------------------------------------------------
3. Write a function that takes the number of audiences in a theater as an input
    parameter and returns the profit of a performance. Every performance costs
    $20 plus $0.50 per person. The price of a ticket is $5.00.
--------------------------------------------------------------------------------|#
; your code below

#|-------------------------------------------------------------------------------
4. Write a function that takes an input and calculates the function n/3 + 2.
--------------------------------------------------------------------------------|#
; your code below

#|-------------------------------------------------------------------------------
5. Write a function that takes an input and calculates the function n^2 + 10.
--------------------------------------------------------------------------------|#
; your code below

#|-------------------------------------------------------------------------------
6. Write a function that takes an input and calculates the function ½ n^2 + 20.
--------------------------------------------------------------------------------|#
; your code below

#|-------------------------------------------------------------------------------
7. Write a function that takes an input and calculates the function 2 – 1/n.
--------------------------------------------------------------------------------|#
; your code below

#|-------------------------------------------------------------------------------
8. Write a lambda expression with two input variables that is applied to two
    arguments and returns the multiplication of them.
--------------------------------------------------------------------------------|#
; your code below

#|-------------------------------------------------------------------------------
9. Write the previous lambda expression in the form of two lambda expressions
    each taking one input.
--------------------------------------------------------------------------------|#
; your code below

#|-------------------------------------------------------------------------------
10. Write a function to calculate the volume of a cylinder from its radius and
    height. Use the previous function to calculate the area of the circle.
    Format the output to 4 precision.
--------------------------------------------------------------------------------|#
; your code below

#|-------------------------------------------------------------------------------
11. Write a function that takes a parameter and returns true if the parameter
    is a root of the equation 4n^2 + 6n + 2 = 462. Check whether 10, 12, or 14
    are the solutions of the equation.
--------------------------------------------------------------------------------|#
; your code below

#|-------------------------------------------------------------------------------
12. Suppose the bank pays 4% for deposits of up to $1000 (inclusive), 4.5% for
    deposits of up to $5000 (inclusive), and 5% for deposits of more than $5000.
    Write a program including two functions that takes an amount of deposit and
    returns the amount of interest. One function returns the interest rate,
    and one function calculates the amount of interest.
--------------------------------------------------------------------------------|#
; your code below

#|-------------------------------------------------------------------------------
13. Enhance the previous program to format the output (amount of interest)
    with exactly two decimal points. And if the user enters a negative number
    the function outputs an error message instead of the interest amount.
--------------------------------------------------------------------------------|#
; your code below

#|-------------------------------------------------------------------------------
14. Write a for loop that iterates through two lists and prints the multiplication
    of corresponding members in the lists.
--------------------------------------------------------------------------------|#
; your code below

#|-------------------------------------------------------------------------------
15. Write a for/list loop that iterates through two lists and returns the
    multiplication of corresponding members in the lists.
--------------------------------------------------------------------------------|#
; your code below

#|-------------------------------------------------------------------------------
16. Write a recursive function that takes a list as input and returns the
    number of list members.
--------------------------------------------------------------------------------|#
; your #|****************************************************************************************

#|-------------------------------------------------------------------------------
17. Write the factorial function in the form of tail recursive.
--------------------------------------------------------------------------------|#
; your code below

#|-------------------------------------------------------------------------------
18. Write the function that counts the list members in the form of tail recursive.
--------------------------------------------------------------------------------|#
; your code below

#|-------------------------------------------------------------------------------
19. Write the tail recursive version of the function in previous question
    using a let statement.
--------------------------------------------------------------------------------|#
; your code below

#|-------------------------------------------------------------------------------
20. Write a recursive function that receives a list, iterates through all
    members of the input list, reconstruct a new list similar to the original
    and returns the result as a list.
--------------------------------------------------------------------------------|#
; your code below

#|-------------------------------------------------------------------------------
21. Write a recursive function that receives a list, squares all member of
    the input list and returns the result as a list.
--------------------------------------------------------------------------------|#
; your code below

#|-------------------------------------------------------------------------------
22. Write a recursive function that receives a list and a number, checks
    whether the number is a member of the list. If the number is a member
    the function returns the number in a list. If the number is not found
    in the list the function returns an error message. Do not use the
    built-in functions like member.
--------------------------------------------------------------------------------|#
; your code below

#|-------------------------------------------------------------------------------
23. Write a recursive function that receives a list and a number, adds the
    number to the end of list and returns the resulting list.
--------------------------------------------------------------------------------|#
; your code below

#|-------------------------------------------------------------------------------
24. Write a recursive function that receives a list, removes the last member
    of the list and returns the resulting list.
--------------------------------------------------------------------------------|#
; your code below

#|-------------------------------------------------------------------------------
25. Write a recursive function that receives a list,
    drops every other member of the list and returns the resulting list.
    The following example shows the sample output:
    ; > (drop '(1 2 3 4 5))  -> '(1 3 5)
    ; > (drop '(1 2))        -> '(1)
    ; > (drop '(1))          -> '(1)
    ; If the list is empty the function returns an empty list.
--------------------------------------------------------------------------------|#
; your code below

#|-------------------------------------------------------------------------------
26. Write a recursive function that receives two lists. It appends the second
    list to the end of the first list and returns the resulting list. If either
    list is empty the function returns the other list. If both lists are empty
    the function returns empty list. The lists can be of different lengths.
--------------------------------------------------------------------------------|#
; your code below

#|-------------------------------------------------------------------------------
27. Write a recursive function that receives two lists, it constructs a list
    and returns. The returning list consists of members of the two list
    alternatively. The following example shows the sample outputs:
    ; > (alternate '(1 2 3) '(a b c)) -> '(a 1 b 2 c 3)
    ; > (alternate '(1 2 3) '(a b))   -> '(a 1 b 2 3)
    ; Assume the two lists of the same size. If either list is empty the function
    ; returns the other list.
--------------------------------------------------------------------------------|#
; your code below

#|-------------------------------------------------------------------------------
28. Write a tail recursive function that receives a list and returns the reverse
    of the list. Do not use the built-in functions like reverse.
--------------------------------------------------------------------------------|#
; your code below

#|-------------------------------------------------------------------------------
29. Write a function similar to built-in function map that takes a list and a
    function name as arguments and applies the function argument to the
    individual members of the list argument and returns the results as a list.
    You can assume that the function argument takes only one argument. The
    following call would be an example:
    ; > (mymap '(1 4 9) sqrt) -> '(1 2 3)
--------------------------------------------------------------------------------|#
; your code below