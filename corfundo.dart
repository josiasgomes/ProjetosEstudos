import 'package:flutter/material.dart';

void main () {
  runApp(const MyApp());
}


//ESTA CLASSE É ESTÁTICA (NÃO PRECISA FAZER ALTERAÇÕES)
class MyApp extends StatelessWidget {
  const MyApp ({super.key});
  
  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      title: 'Trocando a tela',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const FirstScreen(title: 'Alternando entre telas'),
    );
  }
}

/*

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplo de Navegação',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(), // A primeira tela que o usuário vê
    );
  }
}

// 1. A Tela Principal (HomeScreen)
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela Principal'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Você está na tela principal.',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // 2. Usando Navigator.push para navegar para a DetailScreen
                // O MaterialPageRoute define a transição e a nova tela
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DetailScreen()),
                );
              },
              child: const Text('Ir para a Tela de Detalhes'),
            ),
          ],
        ),
      ),
    );
  }
}

// 3. A Tela de Detalhes (DetailScreen)
class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela de Detalhes'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Esta é a tela de detalhes.',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // 4. Usando Navigator.pop para voltar para a tela anterior
                // Isso remove a tela atual da pilha de navegação
                Navigator.pop(context);
              },
              child: const Text('Voltar para a Tela Principal'),
            ),
          ],
        ),
      ),
    );
  }
}


*/