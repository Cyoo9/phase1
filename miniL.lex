   /* cs152-miniL phase1 */
   
%{   
   /* write your C code here for definitions of variables and including headers */
%}

   /* some common rules */
digit [0-9]
%%
   /* specific lexer rules in regex */
"+" {printf("ADD");}
{digit}+ {printf("NUMBER");}
"-" {printf("SUB");}
"*" {printf("MULT");}
"/" {printf("DIV");}
"%" {printf("MOD");}
"==" {printf("EQ");}
"<>" {printf("NEQ");}
"<" {printf("LT");}
">" {printf("GT");}
"<=" {printf("LTE");}
">=" {printf("GTE");}
";" {printf("SEMICOLON");}
":" {printf("COLON");}
"," {printf("COMMA");}
"(" {printf("L_PAREN");}
")" {printf("R_PAREN");}
"[" {printf("L_SQUARE_BRACKET");}
"]" {printf("R_SQUARE_BRACKET");}
":=" {printf("ASSIGN");}

%%
	/* C functions used in lexer */

int main(int argc, char ** argv)
{
   yylex();
}
