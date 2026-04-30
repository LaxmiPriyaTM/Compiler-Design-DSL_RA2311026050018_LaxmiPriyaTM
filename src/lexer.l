%{
#include <stdio.h>
int line = 1;
%}

%%

\n            { line++; }
[0-9]+        { printf("NUMBER,%s,%d\n", yytext, line); }
[a-zA-Z]+     { printf("ID,%s,%d\n", yytext, line); }
"+"           { printf("PLUS,+,%d\n", line); }
"-"           { printf("MINUS,-,%d\n", line); }
"="           { printf("ASSIGN,=,%d\n", line); }
";"           { printf("SEMICOLON,;,%d\n", line); }

[ \t]         ;
.             { printf("UNKNOWN,%s,%d\n", yytext, line); }

%%

int yywrap() { return 1; }

int main() {
    yylex();
    return 0;
}
