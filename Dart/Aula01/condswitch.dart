//Condicional Switch
void main() {
  //Exibição do menu
  print('1 - Número par');
  print('2 - Maior número');
  print('3- Sair');

  //Declarando variável
  int opcao = 2;

  //Condicional
  switch (opcao) {
    case 1:
      //Declaração
      int numero = 10;

      //Condicional par ou impar
      if (numero % 2 == 0) {
        print('O número $numero é par!');
      } else {
        print('O número $numero é ímpar');
      }
      break;
    case 2:
      //Declaração
      int a = 3;
      int b = 3;

      //condicional
      if (a > b) {
        print('O número $a é maior que o número $b!');
      } else if (a < b) {
        print('O número $a é menor que o número $b!');
      } else {
        print('Os números são iguais');
      }
      break;

    default:
      print('Fora do intervalor de opções!');
  }
}
