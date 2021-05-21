void main() {
  //Operadores lógicos
  /**
     * && (E) V && V = V
     * || (OU) F || F = F
     * ! Negação
     */

  //Declaração de variáveis
  int a = 20;
  int b = 5;
  int c = 7;

  //Verificando Verdadeiro
  bool proposicao1 = a > b;
  bool proposicao2 = b < c;

  //Saída
  //        V         V
  print('$a > $b && $b < $c - Resposta: ${proposicao1 && proposicao2}');
  //        V         F
  print('$a > $b || $b > $c - Resposta: ${proposicao1 || proposicao2}');

  //Verificando o falso
  bool proposicao3 = a < b;
  bool proposicao4 = b > c;

  //Saída
  print('$a < $b && $b > $c - Resposta: ${proposicao3 && proposicao3}');
  print('$a > $b || $b > $c - Resposta: ${proposicao4 || proposicao4}');

  //Negação
  bool v = true;
  bool f = false;

  //Saída
  print('Negando o V: ${!v}');
  print('Negando o F: ${!f}');
}
