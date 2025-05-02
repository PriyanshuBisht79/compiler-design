%{
#include <stdio.h>
#include <ctype.h>

%}

%%
[a-zA-Z_][a-zA-Z0-9_]* { printf("Valid Identifier: %s\n", yytext); }
.*	{ printf("Invalid Identifier: %s\n", yytext); }
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

