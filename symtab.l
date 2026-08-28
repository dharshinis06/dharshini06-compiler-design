%{
#include <stdio.h>
%}

%%
[0-9]+      { printf("NUMBER: %s\n", yytext); }
[a-zA-Z]+   { printf("WORD: %s\n", yytext); }
[ \t\n]+    ;
.           { printf("SPECIAL: %s\n", yytext); }
%%

int yywrap()
{
    return 1;
}

int main()
{
    yylex();
    return 0;
}
