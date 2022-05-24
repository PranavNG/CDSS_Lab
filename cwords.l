%{
	#include <stdio.h>
	int words= 0;
%}
%%
[a-zA-Z0-9]* {words++;}
%%
int main()
{
	yylex();
	printf("No. of words = %d \n", words);
}	
