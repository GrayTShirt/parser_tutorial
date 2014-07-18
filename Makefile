

all:
	flex -o ex4.lex.c ex4.l 
	bison -d ex4.y
	gcc -Wall -g ex4.lex.c ex4.tab.c -o ex4 -lfl
	@echo -e "\nYou are now ready to use the parser: ./ex4"

clean:
	git clean -xdf
