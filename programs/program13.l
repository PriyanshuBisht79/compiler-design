%{
#include <stdio.h>
#include <string.h>
%}

%%
^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$        {
 printf("Valid Email: %s\n", yytext);
}
.*      {
 printf("Invalid Email: %s\n", yytext);
}
%%

int main() {
    printf("Name :- Priyanshu Bisht\nSection :- h2\n Roll no. 56\n\n");
    printf("Enter an email: ");
    yylex();
    return 0;
}
int yywrap() {
    return 1;
}