* Codigo TM para programa.lc (variaveis na pilha, operacoes em reg[0] e reg[1])
* { BAS = 2.0 ; EXP = 10.0 ; RES = 1.0 ; enquanto ( EXP > 0.0 ) { RES = RES * BAS ; EXP = EXP - 1.0 } }

* Mapa das variáveis
*    0(6) [dMem 1023] = BAS
*   -1(6) [dMem 1022] = EXP
*   -2(6) [dMem 1021] = RES

  0:     LD  6,0(0)
  1:     ST  0,0(0)

* BAS = 2.0
  2:    LDC  0,2(0)
  3:     ST  0,0(6)

* EXP = 10.0
  4:    LDC  0,10(0)
  5:     ST  0,-1(6)

* RES = 1.0
  6:    LDC  0,1(0)
  7:     ST  0,-2(6)

* enquanto ( EXP > 0.0 )
  8:     LD  0,-1(6)
  9:    JLE  0,9(7)

* RES = RES * BAS
 10:     LD  0,-2(6)
 11:     LD  1,0(6)
 12:    MUL  0,0,1
 13:     ST  0,-2(6)

* EXP = EXP - 1.0
 14:     LD  0,-1(6)
 15:    LDC  1,1(0)
 16:    SUB  0,0,1
 17:     ST  0,-1(6)

 18:    LDA  7,-11(7)
 19:   HALT  0,0,0

* offset = destino - (atual + 1)
