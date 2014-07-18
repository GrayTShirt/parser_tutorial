%{
#include <stdio.h>
#include "ex4.tab.h"
%}
%option nounput noinput
%%
[0-9]+      yylval.number=atoi(yytext); return NUMBER;
heat        return TOKHEAT;
heater      return TOKHEATER;
on|off      yylval.number=!strcmp(yytext,"on"); return STATE;
target      return TOKTARGET;
temperature return TOKTEMPERATURE;
[a-z0-9]+   yylval.string=strdup(yytext);return WORD;
\n          /* ignore end of line */;
[ \t]+      /* ignore whitespace */;
%%
