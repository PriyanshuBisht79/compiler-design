// 11: Design a LEX Code to take check whether the given number is even or odd.
%{
#include <stdio.h>
%}

%%

[0-9]+   { 
            int num = atoi(yytext);
            if (num % 2 == 0) 
                printf("%d is even\n", num);
            else 
                printf("%d is odd\n", num);
        }

.     { /* Ignore other characters */ }

%%

int main() {

    printf("Name :- Priyanshu Bisht\nSection :- h2\n Roll no. 56\n\n");
    printf("Enter a number::");
    yylex();
    return 0;
}
