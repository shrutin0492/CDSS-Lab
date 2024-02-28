//1b. Program to recognize and count the number of identifiers in a file
%{
#include<stdio.h>
int i=0;
%}
digit [0-9]
letter [a-z A-Z_]
%%
{letter}({letter}|{digit})* {i++;}
{digit}({letter}|{digit})* {i;}
%%
int main()
{
printf("Enter the values:\n");
yylex();
printf("Number of identifiers = %d\n", i);
return 0;
}

