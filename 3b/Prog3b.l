/*3b. Program to count the number of “scanf” and “printf” statements in a C program. 
Replace them with “readf” and “writef” statements respectively.
*/
%{
#include<stdio.h>
int sf=0,pf=0;
%}
%%
"scanf" {sf++; fprintf(yyout,"readf");}
"printf" {pf++; fprintf(yyout,"writef");}
%%
int main()
{
yyin=fopen("f1.c","r");
yyout=fopen("f2.c","w");
yylex();
printf("No. of scanf statements = %d\n No. of printf statements = %d\n",sf,pf);
return 0;
}
