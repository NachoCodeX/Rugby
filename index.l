%{
    #define     pyC         0
    #define     rBegin      1
    #define     rEnd        2
    #define     rAlias      3
    #define     rAnd        4
    #define     rBreak      6
    #define     rCase       7
    #define     rClass      8
    #define     rDef        9
    #define     rDefined    10
    #define     rDo         11
    #define     rElse       12
    #define     rElsif      13
    #define     rEnsure     15
    #define     rFalse      16
    #define     rFor        17
    #define     rIf         18
    #define     rModule     19
    #define     rNext       20
    #define     rNil        21
    #define     rNot        22
    #define     rOr         23
    #define     rRedo       24
    #define     rRescue     25
    #define     rRetry      26
    #define     rReturn     27
    #define     rSelf       28
    #define     rSuper      29
    #define     rThen       30
    #define     rTrue       31
    #define     rUndef      32
    #define     rUnless     33
    #define     rUntil      34
    #define     rWhen       35
    #define     rWhile      36
    #define     rYield      37

    #define     NEWLINE     38
    #define     rPuts       39
    #define     id          40
    #define     pAbr        41
    #define     pCrr        42
    #define     TAB         43
    #define     QUOTE       44
    #define     SPACE       45
    #define     ALPHABET    46
    #define     VarI        47
    #define     VarC        48
    #define     EQUAL       49
    #define     NUMBER      50
    #define     COLON       51
    #define     CODE        52
%}
letras      [a-zA-Z]+
alphabet    .*  
numeros     [0-9]+
%%

"begin"                                          {return rBegin;}
"alias"                                          {return rAlias;}
"and"                                            {return rAnd;}
"break"                                          {return rBreak;}
"case"                                           {return rCase;}
"class"                                          {return rClass;}
"def"                                            {return rDef;}
"defined"                                        {return rDefined;}
"do"                                             {return rDo;}
"else"                                           {return rElse;}
"elsif"                                          {return rElsif;}
"end"                                            {return rEnd;}
"ensure"                                         {return rEnsure;}
"false"                                          {return rFalse;}
"for"                                           {return rFor;}
"if"                                             {return rIf;}
"module"                                         {return rModule;}
"next"                                           {return rNext;}
"nil"                                            {return rNil;}
"not"                                            {return rNot;}
"or"                                             {return rOr;}
"retry"                                          {return rRetry;}
"return"                                         {return rReturn;}
"self"                                           {return rSelf;}
"super"                                          {return rSuper;}
"puts"                                           {return rPuts;}
"then"                                           {return rThen;}
"true"                                           {return rTrue;}
"undef"                                          {return rUndef;}
"unless"                                         {return rUnless;}
"until"                                          {return rUntil;}
"when"                                           {return rWhen;}
"while"                                          {return rWhile;}
"yield"                                          {return rYield;}
{letras}({letras}|{numeros}|_)*                  {return id;}
"\n"                                           {return NEWLINE;}
"\t"                                           {return TAB;}
"("                                            {return pAbr;}
")"                                            {return pCrr;}
"\""+{alphabet}+"\""                            {return ALPHABET;}
" "                                            {return SPACE;}
"@@"+{letras}({letras}|{numeros}|_)*           {return VarC;}
"@"+{letras}({letras}|{numeros}|_)*            {return VarI;}
"="                                            {return EQUAL;}
{numeros}                                      {return NUMBER;}
","                                            {return COLON;}



%%