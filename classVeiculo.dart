void main() async {
  var carro = Carro.new('Ford', 'Ka', 2009, 4);
  var moto = Moto.new('Honda', 'CB 500', 2023, 500);

  print('--- Ações com o Carro ---');
  carro.exibirDetalhes();
  carro.acelerar();
  carro.abrirPortaMala();
  carro.frear();

  print("");

  print('--- Ações com a Moto ---');
  moto.exibirDetalhes();
  moto.acelerar();
  moto.empinar();
  moto.frear();
}

class Veiculo {
  String marca;
  String modelo;
  int ano;

  Veiculo(this.marca, this.modelo, this.ano);

  void acelerar() {
    print('O $modelo acelerou!');
  }

  void frear() {
    print('O $modelo freou!');
  }

  void exibirDetalhes() {
    print('Detalhes: $marca $modelo, Ano: $ano');
  }
}

class Carro extends Veiculo {
  int numeroDePortas;

  Carro(String marca, String modelo, int ano, this.numeroDePortas)
    : super(marca, modelo, ano);

  void abrirPortaMala() {
    print('O porta-malas do $modelo foi aberto.');
  }
  @override
  void exibirDetalhes() {
    super.exibirDetalhes();//MANTÉM A INFORMAÇÃO DO MÉTODO ORIGINAL
    print('Meu $marca $modelo tem $numeroDePortas.');//ACRESCENTA A INFORMAÇÃO AO MÉTODO ORIGINAL DA CLASSE PAI
  }
}

class Moto extends Veiculo {
  int cilindradas;

  Moto(String marca, String modelo, int ano, this.cilindradas)
    : super(marca, modelo, ano);

  void empinar() {
    print('A $modelo deu um grau! Wooow.');
  }
  @override
  void exibirDetalhes() {
    super.exibirDetalhes();//MANTÉM A INFORMAÇÃO DO MÉTODO ORIGINAL
    print('Cilindradas:  $cilindradas cc');//ACRESCENTA A INFORMAÇÃO AO MÉTODO ORIGINAL DA CLASSE PAI
  }
}
