%{
#include "expr.tab.h"
%}

%%

[0-9]+              { yylval = atoi(yytext); return NUMBER; }
[ \t]+              { /* skip whitespace */ }
\n                  { return '\n'; }           
"+"                 { return PLUS; }
"-"                 { return MINUS; }
"*"                 { return TIMES; }
"/"                 { return DIVIDE; }
"("                 { return LPAREN; }
")"                 { return RPAREN; }

.                   { printf("Unknown character: %s\n", yytext); return 0; }

%%