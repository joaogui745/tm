### Compilar a Mini-Linguagem (Flex + Bison + GCC)

bison -d sintatico.y

flex lexico.l

gcc sintatico.tab.c lex.yy.c -o analisador.exe

### Verificar um Programa na Mini-Linguagem
analisador.exe

### Compilar o Simulador TM
gcc tm.c -o tm.exe



### Executar programa.tm no Simulador



.\tm.exe programa.tm

d 1021 3
