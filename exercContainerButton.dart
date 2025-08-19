import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //appBar: AppBar(
          //title: Text('Meu Primeiro Exercício de Layout'),
        //),
        body: Center(
          //CÓDIGO AQUI
          child: Container(
            width: 300,
            height: 900,
            decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(color: Colors.transparent),
            borderRadius: BorderRadius.circular(20)),
            

            child: Column( 
             children: <Widget> [
            
             Expanded(
              child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               
               children: <Widget> [
                 Text('CLIQUE AQUI', style: TextStyle(color: Colors.white)),
                 SizedBox(height: 100),
                 Icon(Icons.add_a_photo, color: Colors.brown, size: 100.0),
                 ],
               ),
            ),
                 ElevatedButton(
                  onPressed: () {},
                  child: Text('FIM', style: TextStyle(color: Colors.black)),
                 ),
               SizedBox(height: 30),
    
            ],
           ),       
          
          
          
          
          
          

          //CÓDIGO ATÉ AQUI
        ),
      ),
      ),
    );
  }
}