// 10: Design a LEX Code to recognize and print the following tokens: a) string b) keywords c) constants d) identifiers e) literals
%{
#include <stdio.h>
%}

%%
\"[^\"]*\"      { printf("String: %s\n", yytext); }
int|float|return|if|else|while|for|char|double      { printf("Keyword: %s\n", yytext); }
[0-9]+(\.[0-9]+)?       { printf("Constant: %s\n", yytext); }
[A-Za-z_][A-Za-z0-9_]*      { printf("Identifier: %s\n", yytext); }
'[^']'      { printf("Literal: %s\n", yytext); }
[\n\t ]+        { /* Ignore whitespace */ }
.       { printf("Unknown Token: %s\n", yytext); }
%%

int main() {
    printf("Name: Priyanshu Bisht\nRoll No.56\nSection: h2\n\n");
    printf("Enter a pattern: ");
    yylex();
    return 0;
}
int yywrap() {
    return 1;
}