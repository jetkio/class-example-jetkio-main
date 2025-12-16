/* A simple c program to demo compiling steps

TODO: compile, run and observe the preprocessed and assemblly of hello.c

Compiling: gcc -o hello hello.c
Running: ./hello
Preprocess: gcc -E hello.c -o hello.i
    Examin hello.i
Assembly: gcc -S hello.c -o hello.s
    Examine hello.s
Object file: Hex editor extension
    Examin hello
*/

#include <stdio.h>
#include "greetings.h"

int main() {
    printf("%s\n", MESSAGE);
    return 0;
}


