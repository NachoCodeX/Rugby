%{
    #include <stdio.h>
    int yylex();
    void yyerror(char *s);
%}

%token      rBegin      1
%token      rEnd        2
%token      rAlias      3
%token      rAnd        4
%token      rBreak      6
%token      rCase       7
%token      rClass      8    
%token      rDef        9
%token      rDefined    10
%token      rDo         11
%token      rElse       12
%token      rElsif      13
%token      rEnsure     15
%token      rFalse      16
%token      rFor        17
%token      rIf         18
%token      rModule     19
%token      rNext       20
%token      rNil        21
%token      rNot        22
%token      rOr         23
%token      rRedo       24
%token      rRescue     25
%token      rRetry      26
%token      rReturn     27
%token      rSelf       28
%token      rSuper      29
%token      rThen       30
%token      rTrue       31
%token      rUndef      32
%token      rUnless     33
%token      rUntil      34
%token      rWhen       35
%token      rWhile      36
%token      rYield      37
%token      NEWLINE     38
%token      rPuts       39
%token      id          40
%token      pAbr        41
%token      pCrr        42
%token      TAB         43
%token      comilla     44
%token      SPACE       45



%start Start

%%


Start:Def|Puts|Class;

Def:rDef id pAbr pCrr NEWLINE TAB NEWLINE rEnd {printf("DEF");}
Puts:rPuts SPACE comilla comilla{printf("PUTS");};
Class:rClass SPACE id NEWLINE TAB NEWLINE rEnd {printf("CLASS");};

%%
int main(){
    yyparse();
}
