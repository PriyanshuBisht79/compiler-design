// 14: Design a DFA in LEX Code which accepts all possible set of string containing even number of ‘a’ and even number of ‘b’ over input 
%{
#include<stdio.h>

int a_count=0;
int b_count=0;
int invalid_count =0;

%}

%%
a   {a_count++;}
b   {b_count++;}
\n  {
    if(invalid_count){
        printf("Invalid Input\n");
    }
    else if((a_count & 1 ) || (b_count & 1)){
        printf("Rejected: Not even number of a's and b's\n");
    }else{
        printf("Accepted: Even number of a's and b's\n");
    }

    a_count=0;
    b_count=0;
    invalid_count=0;
}

[^ab\n] {invalid_count=1;}
%%


int yywrap(void){
    return 1;
}

int main(){
    printf("Name: Priyanshu Bisht\nRoll No.56\nSection: h2\n\n");
    printf("Enter the string with 'a' and 'b' (Ctrl+D to end input on Unix/Linux, Ctrl+Z on Windows):\n");

    yylex();
    return 0;
}