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
%token      QUOTE      44
%token      SPACE       45
%token      ALPHABET    46
%token      VarI        47
%token      VarC        48
%token      EQUAL       49
%token      NUMBER      50
%token      COLON       51
%token      CODE       52

%start Start

%%


Start: Def | Puts | Class | Variables;

Class:rClass SPACE id NEWLINE TAB Method rEnd NEWLINE;


Def:rDef SPACE id NEWLINE TABS Puts NEWLINE TABS rEnd NEWLINE | rDef SPACE id NEWLINE TABS NEWLINE  TABS rEnd NEWLINE | rDef SPACE id NEWLINE TABS Puts NEWLINE  rEnd NEWLINE| rDef SPACE id NEWLINE TABS NEWLINE  rEnd NEWLINE;




TABS:TABS TAB | TAB ;


Method:Method Def | Def;

Puts:rPuts SPACE ALPHABET;

Variables:Start Variables COLON id EQUAL Types NEWLINE | id  EQUAL  Types NEWLINE | VarI EQUAL Types NEWLINE | VarC EQUAL Types NEWLINE;

Types:ALPHABET | NUMBER| CODE;


%%
int main(){
    yyparse();
}
