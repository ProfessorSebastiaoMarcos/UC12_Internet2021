//Loop For
/**
 * O laço For é uma implementação de um loop definido. 
 * O loop for executa o bloco de código por um determinado número de vezes. 
 * Ele pode ser usado para iterar sobre um conjunto fixo de valores, 
 * como uma matriz.
 */

void main() {
  int contador = 20;
  for (var i = 1; i < contador; i++) {
    print('Número: $i');

    //Interrupção
    if (i == 10) {
      print('Loop interrompido!');
      break; //Pode usar continue
    }
  }
  print('----------------------------------------------------');
  
}
