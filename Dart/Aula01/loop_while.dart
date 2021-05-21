//Loop While
/**
 * O loop while executa as instruções cada vez que a 
 * condição especificada é avaliada como verdadeira. Em outras palavras, 
 * o loop avalia a condição antes que o bloco de código seja executado
 */

void main() {
  //declaração de variável
  int contador = 0;

  while (contador <= 20) {
    print('Número: $contador');

    //Incrementando o contador
    contador++;

    if (contador == 10) {
      print('Loop interrompido!');
      break; //Podemos usar o continue também
    }
  }
}
