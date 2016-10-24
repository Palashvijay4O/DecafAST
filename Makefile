all:
	bison -d decaf.y
	flex decaf.l
	g++ --std=c++11 decaf.tab.c lex.yy.c main.cpp -L/usr/local/opt/bison/lib -Wno-deprecated-register -o decaf


clean:
	rm -f decaf.tab.* lex.yy.c XML_visitor.txt a.out decaf