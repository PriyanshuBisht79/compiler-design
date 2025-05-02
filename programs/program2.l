%{
#include <stdio.h>
int lines = 0, spaces = 0, tabs = 0, others = 0;
%}

%%
\n { lines++; }
" " { spaces++; }
\t { tabs++; }
. { others++; }
%%

int main() {
    printf("Name: Priyanshu Bisht\nRoll No.56\nSection: h2\n\n");
    printf("Enter the input text (Ctrl+D to end input on Unix/Linux, Ctrl+Z on Windows):\n");
    yylex();
    printf("Lines: %d\n", lines);
    printf("Spaces: %d\n", spaces);
    printf("Tabs: %d\n", tabs);
    printf("Other Characters: %d\n", others);
    return 0;
}

int yywrap() {
    return 1;
}
