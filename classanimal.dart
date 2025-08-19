void main() {
  var rex = Cachorro.new();
  var ming = Gato.new();
  var patinho = Pato.new();
  //var animal = Animal.new();//A CLASSE ANIMAL É "abstract", POR ISSO NÃO PODE CRIAR OBJETO
  
  rex.fazerSom();
  ming.fazerSom();
  patinho.fazerSom();
  //animal.fazerSom();//A CLASSE ANIMAL É "abstract", POR ISSO NÃO PODE CRIAR OBJETO
  
}

abstract class Animal {//O TERMO "abstract" TORNA A CLASSE APENAS COMO MODELO, ELA NÃO PODE SER INSTANCIADA
  void fazerSom (){
    print ('...');
  }
}
class Gato extends Animal {
  @override  
  void fazerSom (){
      print ('Miau');
  }
}

class Pato extends Animal {
    @override
    void fazerSom (){
      print ('Quack');
  }
}

class Cachorro extends Animal {
    @override
    void fazerSom (){
      print ('Au au');
  }
}