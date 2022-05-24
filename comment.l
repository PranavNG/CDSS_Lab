%{
#include<stdio.h>
int ml =0, sl=0;
%}
%%
"/*"[a-zA-Z0-9\t' '\n]*"*/" {ml++;}
"//".* {sl++;}
%%
int main()
{
yyin = fopen("f1","r");
yyout = fopen("f2", "w");
yylex();
fclose(yyin);
fclose(yyout);
printf("Single line = %d", sl);
printf("\n");
printf("multi line = %d", ml);
printf("\n");
return 0;
}
int yywrap()
{
return 1;
}
