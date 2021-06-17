/**
 * Classes abstratas servem para impedir que uma classe possa ser instanciada. 
 * Esse é o efeito direto de se usar o modificador abstract na 
 * declaração de uma classe
 */

abstract class Animal {
  String cor;
  double peso;
  String nome;

  //Construtor
  Animal({this.cor = '', this.peso = 0.0, this.nome = ''});

  //Método Vazio
  void correr();
}

//A classe concreta precisa sobrescrever o método
//da classe pai abstrata
class Cachorro extends Animal {
  @override
  void correr() {
    print('O animal está correndo');
  }
}

void main() {
  var toto = Cachorro();
  toto.correr();

}
