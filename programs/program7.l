// 7: Design a LEX Code to replace white spaces of ‘Input.txt’ file by a single blank character into ‘Output.txt’ file.
%{
    #include<stdio.h>
    extern FILE *yyin, *yyout;
%}

%%
[ \n\t]+		{
	fprintf(yyout," "); // replace multiple white spaces with single space
}
.	{
	fprintf(yyout,"%s",yytext);
}
%%

int yywrap(void) {return 1;}

int main(){
    printf("Name: Priyanshu Bisht\nRoll No.56\nSection: h2\n\n");
    yyin = fopen("in.txt","r");
    yyout = fopen("out.txt","w");
    
    if(!yyin || !yyout){
    	printf("Error opening the file\n");
    	return 1;
    }
    yylex();
    
    fclose(yyin);
    fclose(yyout);
    
    printf("Process complete Check the output\n");
    
    return 0;
}
