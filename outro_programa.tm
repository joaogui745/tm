* Codigo TM para outro_programa.lc (variaveis na pilha, operacoes em reg[0] e reg[1])
* { VAL = 70.0 ; se ( VAL > 65.0 ) RES = 1.0 senao RES = 0.0 fim }

* Mapa das variáveis
*    0(6) [dMem 1023] = VAL
*   -1(6) [dMem 1022] = RES

  0:     LD  6,0(0)
  1:     ST  0,0(0)

* VAL = 70.0
  2:    LDC  0,70(0)
  3:     ST  0,0(6)

* se ( VAL > 65.0 )
  4:     LD  0,0(6)
  5:    LDC  1,65(0)
  6:    SUB  0,0,1
  7:    JLE  0,3(7)

* RES = 1.0
  8:    LDC  0,1(0)
  9:     ST  0,-1(6)
 10:    LDA  7,2(7)

* senao: RES = 0.0
 11:    LDC  0,0(0)
 12:     ST  0,-1(6)

* fim
 13:   HALT  0,0,0

* offset = destino - (atual + 1)
