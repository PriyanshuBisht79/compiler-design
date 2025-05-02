// 6: Design a LEX Code to count and print the number of total characters, words, and white spaces in given ‘Input.txt’ file.
%{
#include <stdio.h>
int characters = 0, words = 0, whitespaces = 0;
extern FILE *yyin;
%}

%%
[ \t\n]+ { whitespaces += yyleng; words++; }
. { characters += yyleng; }
%%

int main() {
    printf("Name: Priyanshu Bisht\nRoll No.56\nSection: h2\n\n");
    FILE *file = fopen("Input.txt", "r");
    if (!file) {
        printf("Error opening file\n");
        return 1;
    }
    yyin = file;
    yylex();
    fclose(file);
    
    printf("Total Characters: %d\n", characters);
    printf("Total Words: %d\n", words);
    printf("Total White Spaces: %d\n", whitespaces);
    
    return 0;
}

int yywrap() {
    return 1;
}

