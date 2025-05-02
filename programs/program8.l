%{
#include<stdio.h>
extern FILE *yyin, *yyout;
%}

%%
"//"[^\n]*	{ /* Handle single-line Comment */}

"/*"([^*]|[*]+[^/])*[*]+"/"	{/* Handle multi line comments*/}

.	{fprintf(yyout,"%s",yytext);}
%%


int wrap() {return 1;}

int main(){
	printf("Name: Priyanshu Bisht\nRoll No.56\nSection: h2\n\n");
	printf("Enter the name of input file::");
	char input[100];
	scanf("%[^\n]s",input);
	printf("\n");
	yyin = fopen(input,"r");
	yyout = fopen("Output.c","w");
	
	if(!yyin){
		printf("Error in reading the files\n");
		return 1;
	}else if(!yyout){
		printf("Error in writing the files\n");		
		return 1;
	}
	
	yylex();
	
	fclose(yyin);
	fclose(yyout);
	
	printf("Processing complete. Check output.c\n");
}
