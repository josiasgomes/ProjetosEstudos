import 'package:flutter/material.dart';

//classe main
void main() {
  runApp(const MyApp());
}

//classe principal
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplo de Card Modularizado',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Cards Modulares',
            style: TextStyle(color: Colors.lightBlue),
          ),
        ),
        backgroundColor: Colors.limeAccent,
        body: SingleChildScrollView(
          // Corrected from SingleScrollView
         child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Cria o primeiro card com informações
              const UserCard(
                userName: 'Ana Souza',
                userOccupation: 'Designer UX/UI',
                icon: Icons.design_services,
              ),
              const SizedBox(height: 30),
              // Cria um segundo card com outras informações
              /*
              const UserCard(
                userName: 'Carlos Pereira',
                userOccupation: 'Desenvolvedor Flutter',
                icon: Icons.code,
              ),*/
            ],
          ),
         ),
        ),
      ),
    );
  }
}

//Estilos do card
class UserCard extends StatelessWidget {
  // Propriedades que o Card precisa para exibir as informações.
  final String userName;
  final String userOccupation;
  final IconData icon;

  const UserCard({
    super.key,
    required this.userName,
    required this.userOccupation,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: SizedBox(
        width: 300,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              CircleAvatar(
                radius: 40,
                backgroundColor: Theme.of(context).primaryColor,
                child: Icon(
                  icon, // Usa o ícone passado como parâmetro
                  size: 50,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 15),
              Text(
                userName, // Usa o nome passado como parâmetro
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                userOccupation, // Usa a ocupação passada como parâmetro
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}