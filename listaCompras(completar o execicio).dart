import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';//importação de fontes

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Exercício com ListView Simples'),
          backgroundColor: Colors.indigo,
        ),
        body: Center(
          child: Container(
            color: Colors.grey[200],
            width: 400,
            height: 600,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              
              
              // Seu código começa aqui
              
              child: Column(
                children: [Text('Minha Lista de Compras', 
                           style: GoogleFonts.smoochSans(fontSize: 40.0)),
                 SizedBox(height: 30.0),
                  Expanded(
                  child: ListView(
                    children: <Widget> [
                      ListTile(title: Text('Notebook', 
                               style: GoogleFonts.caprasimo(
                                 fontSize: 30.0,
                                 fontWeight: FontWeight.bold ),),
                               leading: Icon(Icons.build, color: Colors.cyan),
                               subtitle: Text('Asus, Processador Ryzen 5 5600'),
                               trailing: IconButton(
                                 icon: Icon(Icons.laptop), 
                                 color: Colors.brown,
                                 onPressed: (){
                                   print('O notebook foi adicionado ao carrinho.');
                                 },),
                               onTap: () {print('O item 1 foi clicado');
                               },
                              ),
                      SizedBox(height: 20.0),
                      ListTile(title: Text('Smartphone', 
                               style: GoogleFonts.caprasimo(
                                 fontSize: 30.0,
                                 fontWeight: FontWeight.bold ),),
                               leading: Icon(Icons.build, color: Colors.cyan),
                               subtitle: Text('Motorola G54'),
                               trailing: IconButton(
                                 icon: Icon(Icons.smartphone),
                                 color: Colors.brown,
                                 onPressed: (){
                                   print('O smartphone foi adicionado ao carrinho.');
                                 },),
                               onTap: () {
                                 print('O item 2 foi clicado.');
                               },
                              ),
                      SizedBox(height: 20.0),
                      ListTile(title: Text('Automóvel', 
                               style: GoogleFonts.caprasimo(
                                 fontSize: 30.0,
                                 fontWeight: FontWeight.bold ),),
                               leading: Icon(Icons.build, color: Colors.cyan),
                               subtitle: Text('BYD SHARK GS, Motor 1.5 Turbo'),
                               trailing: IconButton(
                                 icon: Icon(Icons.directions_car),
                                 color: Colors.brown,
                                 onPressed: (){
                                   print('O automóvel foi adicionado ao carrinho.');
                                 },),
                               onTap: () {
                                 print('O item 3 foi clicado');
                               },
                              )
                    ],
                  ),
                 ),
                ],
              ),
              
              
              
  

              // Seu código termina aqui
            ),
          ),
        ),
      ),
    );
  }
}


/*

FEITO - Dentro do ListView, crie três widgets ListTile.

FEITO - Para cada ListTile, adicione:

FEITO - Um onTap que imprima uma mensagem no console, por exemplo, "Item 1 clicado!".

FEITO - Um title com um widget Text com o nome do item (por exemplo, "Smartphone", "Tablet", "Notebook").

FEITO - Um subtitle com um widget Text com uma breve descrição do item.

FEITO - Um trailing com um IconButton.

FEITO - Para o IconButton, adicione:

FEITO - Um icon (por exemplo, Icon(Icons.add_shopping_cart) para um botão de "adicionar ao carrinho").

FEITO - Um onPressed que imprima uma mensagem no console, como "Adicionar ao carrinho: Smartphone".

FEITO - Entre cada ListTile, adicione um SizedBox com uma altura de 8.0 para criar um espaço vertical.

FEITO - Dica: O ListTile possui as propriedades leading (para a esquerda) e trailing (para a direita). 
              Use a propriedade trailing para posicionar o botão à direita do texto.

Desafio:

Depois de completar o exercício, tente substituir o IconButton por um ElevatedButton ou 
OutlinedButton para ver como o layout se adapta.
*/