import 'dart:math';

void main() {
  //Declarar limite
  int numero = sortearNumero(10);

  print('Número sorteado foi: $numero');

  /////////////////////////////////
  int valor1 = 10;
  int valor2 = 20;

  //Segundo valor será opcional
  int soma = somaValores(valor1, valor2);

  //Saída
  print('O Resultado dos valores somados: $soma');
}

//Criar a função para sortear o número
int sortearNumero([int limite = 3]) {
  return Random().nextInt(limite);
}

//1 parâmtro obrigatório e 1 parâmetro opcional

int somaValores(int v1, [int v2 = 0]) {
  //Se não informar o valor 2
  //o parâmetro assume 0
  print('Valor 1: $v1');
  print('Valor 2: $v2');

  return v1 + v2;
}
