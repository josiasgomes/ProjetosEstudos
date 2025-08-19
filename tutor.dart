import 'package:flutter/material.dart'; // Importa os widgets do Material Design

// Função principal que inicia o aplicativo
void main() {
  runApp(const MyApp()); // Roda o widget MyApp como o root do seu app
}

// Widget principal do aplicativo, stateless pois o MaterialApp não muda
class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Construtor com Key opcional

  @override
  Widget build(BuildContext context) {
    return MaterialApp( // Configura a base do seu app com Material Design
      title: 'Flutter Demo', // Título que aparece no gerenciador de tarefas do SO
      theme: ThemeData( // Define o tema visual do aplicativo
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), // Esquema de cores baseado em uma cor semente
        useMaterial3: true, // Habilita o Material Design 3
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'), // A tela inicial do seu app
    );
  }
}

// Widget da página inicial, stateful pois seu conteúdo muda (o contador)
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title}); // Construtor com título obrigatório

  final String title; // Propriedade para o título da AppBar

  @override
  State<MyHomePage> createState() => _MyHomePageState(); // Cria o estado associado
}

// O estado que armazena os dados mutáveis e a lógica para o MyHomePage
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0; // Variável de estado para o contador

  // Função para incrementar o contador
  void _incrementCounter() {
    setState(() { // Notifica o Flutter que o estado mudou e a UI precisa ser redesenhada
      _counter++; // Incrementa o valor do contador
    });
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold fornece a estrutura visual básica da tela (AppBar, body, FAB)
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary, // Cor de fundo da AppBar baseada no tema
        title: Text(widget.title), // Usa o título passado para o widget
      ),
      body: Center( // Centraliza o conteúdo no corpo da tela
        child: Column( // Organiza os widgets filhos verticalmente
          mainAxisAlignment: MainAxisAlignment.center, // Centraliza os filhos da coluna
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:', // Texto estático
            ),
            Text(
              '$_counter', // Exibe o valor do contador
              style: Theme.of(context).textTheme.headlineMedium, // Estilo de texto do tema
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton( // Botão flutuante no canto inferior direito
        onPressed: _incrementCounter, // Chama a função de incremento ao ser pressionado
        tooltip: 'Increment', // Texto que aparece ao passar o mouse sobre o botão
        child: const Icon(Icons.add), // Ícone de adição no botão
      ),
    );
  }
}