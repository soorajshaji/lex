%{
    #include<stdio.h>


%}



%%

#.* {

}
\/\/.* {

}

\/\*.*[\n].* {}

[(){};] {printf("\n SPECIAL CHARACTOR : %s",yytext);}

[\+\/\-\*\%\=] {printf("\n OPERATOR : %s",yytext);}

void | 
main | 
printf {
    printf("\n KEYWORD : %s",yytext);
}

[0-9]+ {
    printf("\n number : %s",yytext);
}

[a-zA-Z]+ {
    printf("\n identifier : %s",yytext);
}
. {
    printf("%s",yytext);
}



%%
int yywrap(){
    return 1;
}
void main(){
    FILE *fp = fopen("input.txt","r");
    yyin=fp;
    yylex();
}