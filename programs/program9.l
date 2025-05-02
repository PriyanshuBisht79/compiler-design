%{
#include <stdio.h>
#include <stdlib.h>

extern FILE *yyin, *yyout;
%}

%%
"<"[^>]+">"     { fprintf(yyout, "%s\n", yytext); } // Extract and write HTML tags
.|\n       { /* Ignore non-tag content */ }
%%

int main() {
    char input_file[100], output_file[100];


    printf("Name: Priyanshu Bisht\nRoll No.56\nSection: h2\n\n");

    printf("Enter input HTML file name: ");
    scanf("%s", input_file);
    printf("Enter output text file name: ");
    scanf("%s", output_file);
    
    yyin = fopen(input_file, "r");
    yyout = fopen(output_file, "w");
    
    if (!yyin || !yyout) {
        printf("Error opening file\n");
        return 1;
    }
    
    yylex();
    fclose(yyin);
    fclose(yyout);
    
    printf("Processing complete. Extracted tags are stored in %s\n", output_file);
    
    return 0;
}

int yywrap() {
    return 1;
}
