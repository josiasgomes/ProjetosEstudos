import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu App FlutterPad',

      //O CORPO DO APP 

      home: Scaffold(
        appBar: AppBar(
          title: const Text('Exercício Flutter'),
        ),
        
        //BODY É A PARTIR DAQUI
        
        body: Center(
          child: Container(//ESTILO DA LINHA (ROW)
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black), // BORDA DA ROW
            ),
            child: Row(//LINHA
              mainAxisAlignment: MainAxisAlignment.start,//CENTRALIZA TODO O CONTEÚDO DA ROW
              children: [
                //SizedBox(width: 20),//CRIA UM ESPAÇO ANTES DAS COLUNAS
                Container(//ESTILO DA COLUNA 1
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent), // BORDA DA COLUNA 1
                  ),
                  child: Column(//COLUNA 1
                    children: [//WIDGETS DA COLUNA 1
                      Text('NOME:', 
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold
                          ),
                      ),
                    ],
                  ),
                ),
                
                //ESPAÇO ENTRE AS COLUNAS
                SizedBox(width: 20),
                
                Container(//ESTILO DA COLUNA 2
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent),// BORDA DA COLUNA 2
                  ),
                  child: Column(//COLUNA 2
                    children: [// WIDGETS DA COLUNA 2
                      Text('Josias',
                          style: TextStyle(
                            color: Colors.amber,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.italic
                          ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        //BODY É ATÉ AQUI
      ),
    );
  }
}