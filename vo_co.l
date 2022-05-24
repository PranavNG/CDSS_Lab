%{
	#include <stdio.h>
	int vow = 0;
	int con = 0;
%}
%%
[aeiouAEIOU] {con++;}
[a-zA-Z] {vow++;}
%%

int main()
{
	yylex();
	printf("No. of vowels %d \n", vow);
	printf("No. of consonants %d \n", con);
}
int yywrap()
{
	return 1;
}

