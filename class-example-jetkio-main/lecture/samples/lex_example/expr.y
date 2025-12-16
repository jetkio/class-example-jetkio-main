%{
#include <stdio.h>
#include <stdlib.h>

int yylex(void);           // <-- Add this line
int yyerror(char *s);      // <-- And this
%}

%token NUMBER
%token PLUS MINUS TIMES DIVIDE
%token LPAREN RPAREN
%left PLUS MINUS
%left TIMES DIVIDE

%%
input:
    /* empty */
  | input expr '\n'   { printf("= %d\n", $2); }
  ;

expr:
    NUMBER            { $$ = $1; }
  | expr PLUS expr    { $$ = $1 + $3; }
  | expr MINUS expr   { $$ = $1 - $3; }
  | expr TIMES expr   { $$ = $1 * $3; }
  | expr DIVIDE expr  { 
                        if ($3 == 0) {
                          fprintf(stderr, "Error: Division by zero\n");
                          exit(1);
                        }
                        $$ = $1 / $3;
                      }
  | LPAREN expr RPAREN { $$ = $2; }
  ;

%%

int main() {
    printf("Enter arithmetic expressions (Ctrl+D to quit):\n");
    return yyparse();
}

int yyerror(char *s) {
    fprintf(stderr, "Parse error: %s\n", s);
    return 1;
}
