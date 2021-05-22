//Fução void
import 'dart:io';

void main() {
  mostrarNome();
  linha();

  //Entrada de Dados
  //Implementação depois do null-safe
  //String nome = stdin.readLineSync()!;

  stdout.write('Entre com o primeiro valor: ');
  double valor1 = double.parse(stdin.readLineSync()!);

  stdout.write('Entre com o segundo valor: ');
  double valor2 = double.parse(stdin.readLineSync()!);

  calcularValores('+', valor1, valor2);
  calcularValores('-', valor1, valor2);
  calcularValores('*', valor1, valor2);
  calcularValores('/', valor1, valor2);
}

//Criar a função
void mostrarNome() {
  print('John Doe!');
}

//Função linha
void linha() {
  print('----------------------------------');
}

//Cacular Valores
void calcularValores(String operador, double a, double b) {
  //Condicional
  if (operador == '+') {
    double soma = a + b;
    print('Operador \"$operador\" a soma de $a + $b = $soma');
  } else if (operador == '-') {
    double subt = a - b;
    print('Operador \"$operador\" a soma de $a - $b = $subt');
  } else if (operador == '*') {
    double produto = a * b;
    print('Operador \"$operador\" a soma de $a * $b = $produto');
  } else if (operador == '/') {
    double divisao = a / b;
    print('Operador \"$operador\" a soma de $a / $b = $divisao');
  }
}
