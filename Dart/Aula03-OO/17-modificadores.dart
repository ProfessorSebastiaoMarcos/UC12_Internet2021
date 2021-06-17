//Static e Final
//Não precisar instanciar uma classe
//para acessar o atributo
//É utilizado para guardar valores em classes de configurações
//Essa forma de trabalhar tem um custo no consumo de recursos
//da sua aplicação.

class Retangulo {
  static String cor = 'azul';
  static int contorno = 1;

  static void meuSetup() {
    print('configura cor...');
    print('configura contorno...');
    print('configura base...');
    print('configura altura...');
  }
}

void main() {
  //Imprimindo os valores dos atributos diretamente
  print('A cor do retângulo é: ${Retangulo.cor}');
  print('O contonro do retângulo é: ${Retangulo.contorno}');

  //Visualizando o método
  Retangulo.meuSetup();
}
