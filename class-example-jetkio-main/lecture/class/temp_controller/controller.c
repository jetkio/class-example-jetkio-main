#include "y.tab.h"
#include <stdio.h>

int main(){
  printf("\033[7m CMSC331 THERMO >>\033[0m ");
  yyparse();
  return 0;
}

