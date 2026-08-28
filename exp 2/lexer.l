%{
#include <stdio.h>
%}
%%
"int"|"float"|"char"|"double"|"void"|"if"|"else"|"for"|"while"|"return" { printf("KEYWORD: %s\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]* { printf("IDENTIFIER: %s\n", yytext); }
[0-9]+(\.[0-9]+)? { printf("CONSTANT: %s\n", yytext); }
"//".* { printf("COMMENT: %s\n", yytext); }
"/*"([^*]|\*+[^*/])*\*+"/" { printf("COMMENT: %s\n", yytext); }
"=="|"!="|"<="|">="|"+"|"-"|"*"|"/"|"="|"<"|">" { printf("OPERATOR: %s\n", yytext); }
[ \t\n]+ ;
. { printf("SYMBOL: %s\n", yytext); }
%%
int yywrap(void) { return 1; }
int main(void) { yylex(); return 0; }