void main() { 
//CLASSE ANIMAL E SEUS OBJETOS 
  var animal1 = Animal('cachorro', 'Rex', 5, true); 
  var animal2 = Animal('tartaruga','Fofinha', 25, false); 
  var animal3 = Animal('tartaruga','Flash', 4, false); 
 
  animal1.printNome(); 
  animal1.printIdade(); 
  animal1.statusVacinacao(); 

    List minhaLista () { 
      List<Animal> listaAnimais = [animal1, animal2, animal3]; 
      for (listaAnimais = 0 as List<Animal>; i <=10; i++) { 
        print (i); 
      } 
    return listaAnimais; 
  } 
  minhaLista(); 
} 

class Animal { 
  String especie; 
  String nome; 
  int idade; 
  bool vacinado; 

  Animal (this.especie, this.nome, this.idade, this.vacinado); 
  void printNome () { 
    print ('Meu animal de estimação se chama $nome.'); 
  }
  void printIdade () { 
    print ('Ele tem $idade anos.'); 
  } 
  void statusVacinacao () { 
    if (vacinado){ 
        print ('Ele foi vacinado.' ); 
      } else { 
        print ('Infelizmente ele ainda não foi vacinado.'); 
      } 
  } 
} 