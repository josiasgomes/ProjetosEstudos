/*Exercício Prático: O Fluxo Completo da Loja Virtual
Seu Objetivo:
Construir um aplicativo de 4 telas. Seu trabalho é focar na lógica de navegação entre elas 
para criar uma experiência de usuário correta, utilizando os métodos do Navigator que melhor 
se encaixam em cada situação.

Passo 1: A Estrutura Inicial (As 4 Telas)
Primeiro, vamos criar o esqueleto do nosso aplicativo com as 4 telas vazias. 
Isso nos ajudará a focar apenas na navegação.

Sua Tarefa: Copie e cole este código completo no DartPad. Ele contém as 4 telas que usaremos: 
TelaDeSplash, TelaDeProdutos, TelaDeDetalhes e TelaDeConfirmacao. A partir daqui, 
você implementará a lógica em cada etapa.

Dart
*/
import 'package:flutter/material.dart';

void main() {
  runApp(const LojaVirtualApp());
}

class LojaVirtualApp extends StatelessWidget {
  const LojaVirtualApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Loja Virtual',
      // Nosso app começa na TelaDeSplash
      home: TelaDeSplash(),
    );
  }
}

// TELA 1: Splash Screen
// TODO: Adicionar lógica de navegação nesta tela.
class TelaDeSplash extends StatelessWidget {
  const TelaDeSplash({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}

// TELA 2: Lista de Produtos
// TODO: Adicionar a lista e a lógica de navegação para os detalhes.
class TelaDeProdutos extends StatelessWidget {
  const TelaDeProdutos({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nossos Produtos')),
      body: const Center(child: Text('A lista de produtos aparecerá aqui.')),
    );
  }
}

// TELA 3: Detalhes do Produto
// TODO: Adicionar o botão de compra com a navegação de finalização.
class TelaDeDetalhes extends StatelessWidget {
  final String nomeProduto;
  const TelaDeDetalhes({super.key, required this.nomeProduto});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(nomeProduto)),
      body: Center(child: Text('Detalhes do $nomeProduto')),
    );
  }
}

// TELA 4: Confirmação da Compra
// Nenhuma alteração é necessária aqui.
class TelaDeConfirmacao extends StatelessWidget {
  const TelaDeConfirmacao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scnst Center(
        child: Text('Obrigado por comprar conosco!', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}

/*
Passo 2: Implementar a Navegação da Tela de Splash
Requisito: A TelaDeSplash deve ser exibida por 2 segundos e então levar o usuário para a 
TelaDeProdutos. O usuário não pode ter a opção de voltar para a tela de Splash.

Sua Tarefa: Modifique a TelaDeSplash (convertendo-a para StatefulWidget) para que, 
após 2 segundos, ela navegue para a TelaDeProdutos da maneira correta, cumprindo o requisito 
acima.

Passo 3: Implementar a Navegação da Lista de Produtos
Requisito: A TelaDeProdutos deve mostrar uma lista simples de itens (pode ser "Smartphone XPTO" 
e "Notebook ABC"). Ao tocar em um item, o app deve ir para a TelaDeDetalhes daquele item. 
O usuário precisa poder voltar para a lista de produtos.

Sua Tarefa: Modifique a TelaDeProdutos. Adicione uma ListView com alguns ListTile. 
No evento onTap de cada item, implemente a navegação para a TelaDeDetalhes, 
passando o nome do produto e garantindo que o usuário possa retornar.

Passo 4: Implementar a Navegação Final da Compra
Requisito: Na TelaDeDetalhes, adicione um botão "Comprar Agora". Ao ser clicado, 
ele deve levar o usuário para a TelaDeConfirmacao. O mais importante: a partir da 
TelaDeConfirmacao, o usuário não pode voltar para o detalhe do produto ou para a lista de 
produtos. O fluxo de compra terminou e o histórico anterior deve ser limpo.

Sua Tarefa: Adicione um ElevatedButton na TelaDeDetalhes. No onPressed dele, implemente a 
navegação para a TelaDeConfirmacao que reseta todo o histórico de navegação anterior.

Verificação Final
Após implementar todos os passos, rode o aplicativo e teste o fluxo completo. 
Verifique se:

A tela de Splash desaparece e não pode ser acessada novamente.

Você consegue navegar da lista para os detalhes e voltar para a lista.

Após clicar em "Comprar Agora", você chega na tela de confirmação e não há um botão de "voltar" 
na AppBar, pois o histórico foi limpo com sucesso.
*/