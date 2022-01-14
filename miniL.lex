
   
%{ 
%}


   /* some common rules */
digit [0-9]
%%
   /* specific lexer rules in regex */
"function" {printf("FUNCTION\n");}
"beginparams" {printf("BEGIN_PARAMS\n");}
"endparams" {printf("END_PARAMS\n");}
"beginlocals" {printf("BEGIN_LOCALS\n");}
"endlocals" {printf("END_LOCALS\n");}
"beginbody" {printf("BEGIN_BODY\n");}
"endbody" {printf("END_BODY\n");}
"integer" {printf("INTEGER\n");}
"array" {printf("ARRAY\n");}
"of" {printf("OF\n");}
"if" {printf("IF\n");}
"then" {printf("THEN\n");}
"endif" {printf("ENDIF\n");}
"else" {printf("ELSE\n");}
"while" {printf("WHILE\n");}
"do" {printf("DO\n");}
"beginloop" {printf("BEGINLOOP\n");}
"endloop" {printf("ENDLOOP\n");}
"continue" {printf("CONTINUE\n");}
"break" {printf("BREAK\n");}
"read" {printf("READ\n");}
"write" {printf("WRITE\n");}
"not" {printf("NOT\n");}
"true" {printf("TRUE\n");}
"false" {printf("FALSE\n");}
"return" {printf("RETURN\n");}
"+" {printf("ADD\n");}
{digit}+ {printf("NUMBER %s\n", yytext);}
"-" {printf("SUB\n");}
"*" {printf("MULT\n");}
"/" {printf("DIV\n");}
"%" {printf("MOD\n");}
"==" {printf("EQ\n");}
"<>" {printf("NEQ\n");}
"<" {printf("LT\n");}
">" {printf("GT\n");}
"<=" {printf("LTE\n");}
">=" {printf("GTE\n");}
";" {printf("SEMICOLON\n");}
":" {printf("COLON\n");}
"," {printf("COMMA\n");}
"(" {printf("L_PAREN\n");}
")" {printf("R_PAREN\n");}
"[" {printf("L_SQUARE_BRACKET\n");}
"]" {printf("R_SQUARE_BRACKET\n");}
":=" {printf("ASSIGN\n");}
##.+ {printf("");}
[a-zA-Z][_a-zA-Z0-9]*[a-zA-Z0-9]{0,30}  { printf("IDENT %s\n", yytext);}
"\n" {printf("");}
. {printf("");}


%%
	/* C functions used in lexer */

int main(int argc, char ** argv)
{
   yylex();
}
