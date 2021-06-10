//Definindo as classes

class Cachorro {
  String cor;
  double peso;
  String raca;

  //construtor
  Cachorro({required this.cor, required this.peso, required this.raca});

  //Método
  void latir() {
    print('O Cachorro está latindo...');
  }

  void farejar() {
    print('O cachorro está farejando');
  }
}

class Gato {
  String cor;
  double peso;
  String raca;

  Gato({required this.cor, required this.peso, required this.raca});

  //Método
  void miar() {
    print('O gato está miando...');
  }

  void farejar() {
    print('O gato está farejando');
  }
}
