//Herança
/**
 * Herança é um mecanismo que permite que características comuns a 
 * diversas classes sejam fatoradas em uma classe base, ou 
 * superclasse. A partir de uma classe base, outras classes 
 * podem ser especificadas.
 */

//Classe Pai
class Animal {
  String cor;
  double peso;
  String raca;

  //Construtor
  Animal({this.cor = '', this.peso = 0.0, this.raca = ''});
}

//Para a relação de herança utilizamos a palavra extends
class Cachorro extends Animal {
  //Método
  void latir() {
    print('O cachorro está latindo...');
  }
}

class Gato extends Animal {
  //Método
  void miar() {
    print('O gato está miando...');
  }
}

void main() {
  Cachorro toto = new Cachorro();
  Gato felix = new Gato();

  toto.cor = 'Marrom';
  felix.peso = 3.5;

  print('A cor do cachorro é: ${toto.cor}');
  print('O peso do gato é: ${felix.peso}');
  toto.latir();
  felix.miar();
}
