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
"%" {printf("%");}
"==" {printf("EQ");}
"<>" {printf("NEQ");}
"<" {printf("LT");}
">" {printf("GT");}
"<=" {printf("LTE");}
">=" {printf("GTE");}


%%
	/* C functions used in lexer */

int main(int argc, char ** argv)
{
   yylex();
}
