%{

#include<stdio.h>
#include<string.h>

int v=0,c=0;
%}
%%
[\n \t] ;
[aeiouAEIOU] {v++;}
[^aeiouAEIOU] {c++;}

%%

int yywrap(){
    return 1;
}

int main(){

    printf("enter value:");
    yylex();
    printf("\nNo of vowels=%d\nNo of consonants=%d",v,c);

}
