/*
    File:    calc.l or .y
    Author:  [Jethro Kio-Michael]
    Date:    [12/3/25
    Section: [2]
    E-mail:  jetskiom288@umbc.edu
    Description: defines the lexical analyzer (scanner) using Flex, recognizes 
    tokens in the input stream, including floating-point numbers, variable names, 
    and operators (arithmetic, logical, and comparison), and passes them to the parser]
*/

%{
#include "y.tab.h"
/*#include "calc.h"*/
#include <math.h>
struct symtab *symlook();
/************************************************************************
A lexical scanner to recognize numbers, symbols. 
When a NUMBER is found, its value is set is set to the
appropriate float.  When a NAME is found, an entry in symbol table is
created (with initial value 0.0) and the token's value is a pointer to
this entry. Spaces and tabs are ignored. Any other characters, including
a newline, are passed on as their own tokens. Based on the zcalc
calculator by ruiz@capsl.udel.edu
************************************************************************/

%}

D     [0-9]
A     [a-zA-Z]
AD    [a-zA-Z0-9]

%%

({D}+|({D}*\.{D}+)([eE][-+]?{D}+)?) {yylval.dval = atof(yytext); return NUMBER;}

{A}{AD}*                            {struct symtab *sp = symlook(yytext); yylval.symp = sp; return NAME;}

[ \t]  ;
"=="                                { return EQ; }

\n    |
.     return yytext[0];

%%
