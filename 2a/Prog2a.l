/*2a. Programs to count the numbers of comments lines in a given C program. Also 
eliminate them and copy the resulting program into separate file.*/
%{
#include<stdio.h>
int s=0,m=0;
%}
%%
"/*"[a-zA-Z0-9' '\t\n]*"*/" m++;
"//".* s++;
%%
void main(){
yyin=fopen("f1.txt","r");
yyout=fopen("f2.txt","w");
yylex();
fclose(yyin);
fclose(yyout);
printf("No. of single line comments = %d\n",s);
printf("No. of multi line comment s= %d\n",m);
}
int yywrap()
{
return 1;
}

