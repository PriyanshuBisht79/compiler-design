// 5: Design a LEX Code for Tokenizing (Identify and print OPERATORS, SEPERATORS, KEYWORDS, and IDENTIFIERS).
%{
#include<stdio.h>
int n=0;
%}

%%
"while"|"if"|"else"|"for"	{ 
n++;
printf("\tKeyword: %s\n", yytext);
}

"int"|"float"|"long"|"long long"	{ 
n++;
printf("\tKeyword: %s\n", yytext);
}

[a-zA-Z_][a-zA-Z0-9_]*	{ 
n++;
printf("\tIdentifier: %s\n", yytext);
}

"=="|">="|"<="|"="|"++"|"--"|"+"|"-"|"/"|"*"|"%"|"("|")"|","	{ 
n++;
printf("\tOperator: %s\n", yytext);
}

"{"|"}"|";"	{ 
n++;
printf("\tSeparator: %s\n", yytext);
}

-?[0-9]+	{ 
n++;
printf("\tInteger: %s\n", yytext);
}

-?[0-9]*\.[0-9]+	{ 
n++;
printf("\tFloat: %s\n", yytext);
}

.	{ /* Ignore unknown Characters */ };
%%


int yywrap(){ return 1;}

int main(){
	printf("Name: Priyanshu Bisht\nRoll No.56\nSection: h2\n\n");
	printf("Enter the input text (Ctrl+D to end input on Unix/Linux, Ctrl+Z on Windows):\n");
 	yylex();
	printf("Total Number of Tokens::%d\n",n);
}
