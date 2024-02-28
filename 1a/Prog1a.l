//1a. Program to count the number, words, spaces and lines in a given input file
%{
#include<stdio.h>
int c=0;
int w=0;
int s=0;
int l=0;
%}
%%
" " { s++; w++;}
[\n] { l++; w++;}
[\t\n] {w++;}
[^\t\n] {c++;}
%%
int yywrap()
{
return 1;
}
int main()
{
yyin=fopen("info.txt", "r");
yylex();
printf("No. of Characters = %d\nNo. of Words = %d\nNo. of Spaces = %d\nNo. of Lines= %d\n",c,w,s,l);
return 0;
}

