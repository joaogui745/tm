### Compilar a Mini-Linguagem (Flex + Bison + GCC)

bison -d sintatico.y

flex lexico.l

gcc sintatico.tab.c lex.yy.c -o analisador.exe

### Verificar os Programas na Mini-Linguagem

.\analisador.exe programa.lc saida_programa.txt

.\analisador.exe outro_programa.lc saida_outro_programa.txt


### Compilar o Simulador TM

gcc tm.c -o tm.exe

### Executar programas no Simulador

.\tm.exe programa.tm
d 1021 3
