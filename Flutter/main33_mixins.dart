class Veiculo {
  int _velocidade = 0;

  int acelerar() {
    _velocidade += 5;
    return _velocidade;
  }

  int frear() {
    _velocidade -= 5;
    return _velocidade;
  }
}

//Mixins
mixin Esportivo {
  bool _turboLigado = false;

  ligarTurbo() {
    _turboLigado = true;
  }

  desligarTurbo() {
    _turboLigado = false;
  }
}

class Ferrari extends Veiculo with Esportivo {
  @override
  int acelerar() {
    if (_turboLigado) {
      super.acelerar();
    }
    return super.acelerar();
  }
}

class Fusca extends Veiculo {}

main() {
  var carro1 = Ferrari();
  print(carro1.acelerar());
  print(carro1.acelerar());
  carro1.ligarTurbo();
  print(carro1.acelerar());

  var carro2 = Fusca();
}
