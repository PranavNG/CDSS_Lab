%{
	#include <stdio.h>
	int words = 0;
	int characters = 0;
	int lines = 0;
	int space = 0;
%}

%%
[a-zA-Z0-9]* {words++;}
%%

int main()
{
	yyin = fopen("Test","r");
	yylex();
	printf("No. of chars %d \n", characters);
	printf("No. of words %d \n", words);
	printf("No. of lines %d \n", lines);
	printf("No. of space %d \n", space);
}

