%{
#include <stdio.h>
%}

%%
-?[0-9]+ { printf("Integer: %s\n", yytext); }
-?[0-9]*"."[0-9]+ { printf("Float: %s\n", yytext); }
-?[0-9]+"." { printf("Integer: %s\n", yytext); }
.+ { printf("Neither Integer Nor Float: %s\n", yytext); }
%%

int main() {
    printf("Name: Priyanshu Bisht\nRoll No.56\nSection: h2\n\n");
    printf("Enter the input text (Ctrl+D to end input on Unix/Linux, Ctrl+Z on Windows):\n");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}

