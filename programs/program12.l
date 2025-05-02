%{
    #include<stdio.h>    
    int vowels = 0;
    int consonent;
%}

%%
[aeiouAEIOU]    {vowels++;}
[a-zA-Z]    {consonent++;}
[^a-zA-Z]   ;
%%

int main() {
    printf("Name :- Priyanshu Bisht\nSection :- h2\n Roll no. 56\n\n");
    printf("Enter a String: ");
    yylex();
    printf("Total number of Vowels are : %d\n", vowels);
    printf("Total number of Consonants are: %d\n", consonent);
    return 0;
}