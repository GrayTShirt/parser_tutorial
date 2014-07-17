%{
#include <stdio.h>
#include "ex4.tab.h"
%}

%option bison-bridge

%%
[0-9]+      yylval=atoi(yytext); return NUMBER;
heat        return TOKHEAT;
on|off      yylval=!strcmp(yytext,"on"); return STATE;
target      return TOKTARGET;
temperature return TOKTEMPERATURE;
\n          /* ignore end of line */;
[ \t]+      /* ignore whitespace */;
%%
