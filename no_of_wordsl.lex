%{
#include<stdio.h>
#include<string.h>
int l=0,c=0,w=0,n=0;
%}

%%
[\n] {l++;}
[a-zA-Z]+ {w++;c+=strlen(yytext);}
[1-9] {n++;}
%%

int yywrap(){
    return 1;
}

int main(){

    printf("enter value:");
    yylex();
    printf("line = %d \n words = %d \n character = %d \n number = %d",l,w,c,n);

}
