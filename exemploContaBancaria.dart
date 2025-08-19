void main() {
  var cliente1 = ContaBancaria(0.0);
  
  //OPERAÇÕES BANCÁRIAS
  cliente1.verSaldo();
  print ("*****************");
  cliente1.depositar(2189.52);
  print ("*****************");
  cliente1.verSaldo();
  print ("*****************");
  cliente1.depositar(810.48);  
  print ("*****************");
  cliente1.sacar(500.00);
  print ("*****************");
  cliente1.verSaldo();
  print ("*****************");
  cliente1.sacar(3500.00);
  

}

class ContaBancaria {
  double _saldo;//O UNDERLINE TORNA A VARIÁVEL PRIVADA
  
  //CONSTRUTOR DA CLASSE
  ContaBancaria(this._saldo);
  
  double get saldocliente => _saldo;
  
  void sacar (double saque) {
    if (_saldo > 0 && saque <= _saldo){
      _saldo = _saldo - saque;
      print ("Saque realizado com sucesso.");
      print ("Saldo atual: R\$ ${saldocliente.toStringAsFixed(2)}");
    } else {
      print ("O saque não foi realizado. Saldo insuficiente ou valor inválido.");
    }
  }
  
  void depositar (valorDeposito) {
    if (valorDeposito > 0){
      _saldo = _saldo + valorDeposito;
      print('Depósito realizado com sucesso.');
      print ("Saldo atual: R\$ ${saldocliente.toStringAsFixed(2)}");
    } else {
      print('Valor de depósito inválido. ');
    } 
  }
  
  void verSaldo () {
    print ("Saldo atual: R\$ ${saldocliente.toStringAsFixed(2)}");
  }
}