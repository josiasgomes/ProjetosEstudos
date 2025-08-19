/*
Passo 1: Manter o Login Simples e Navegar para a Lista
Vamos usar a versão simplificada do exercício anterior. 
O importante é que a TelaDeLogin nos leve para uma nova tela, que chamaremos de TelaDeLista.

Abra um DartPad limpo.

Copie e cole o código base abaixo, 
que já contém a TelaDeLogin e uma TelaPrincipal vazia (que renomearemos para TelaDeLista).

Dart
*/
import 'package:flutter/material.dart';

void main() {
  runApp(const MeuAppLista());
}

class MeuAppLista extends StatelessWidget {
  const MeuAppLista({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Navegação com Lista',
      home: TelaDeLogin(),
    );
  }
}

class TelaDeLogin extends StatelessWidget {
  const TelaDeLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Entrar'),
          onPressed: () {
            // Vamos navegar para a nossa nova TelaDeLista
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const TelaDeLista()),
            );
          },
        ),
      ),
    );
  }
}

// Esta será nossa tela com a lista de tópicos
class TelaDeLista extends StatelessWidget {
  const TelaDeLista({super.key});

  // A UI da lista virá aqui no próximo passo
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tópicos de Estudo'),
      ),
      body: const Center(
        child: Text('A lista aparecerá aqui!'),
      ),
    );
  }
}

/*
Passo 2: Criar a Fonte de Dados e Construir a ListView
Toda lista precisa de dados. Vamos criar uma lista simples de Strings dentro da TelaDeLista
e usar um ListView.builder para exibi-los.

Dentro da classe TelaDeLista, antes do método build, crie a lista de tópicos.

No body do Scaffold, substitua o Center por um ListView.builder.

Dart
*/
// Dentro da classe TelaDeLista
class TelaDeLista extends StatelessWidget {
  const TelaDeLista({super.key});

  // 1. Nossa fonte de dados. Em um app real, isso poderia vir de uma API.
  final List<String> topicos = const [
    'Widgets Básicos',
    'Gerência de Estado',
    'Navegação',
    'Consumo de API',
    'Testes',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tópicos de Estudo'),
      ),
      // 2. Substitua o body pelo ListView.builder
      body: ListView.builder(
        // 'itemCount' diz ao ListView quantos itens ele precisa construir.
        itemCount: topicos.length,
        // 'itemBuilder' é chamado para cada item da lista.
        itemBuilder: (context, index) {
          // 'index' é a posição do item atual (0, 1, 2, ...)
          final topico = topicos[index];

          // ListTile é um widget perfeito para linhas de uma lista.
          return ListTile(
            title: Text(topico),
            leading: const Icon(Icons.school), // Um ícone à esquerda
            trailing: const Icon(Icons.arrow_forward_ios), // Uma seta à direita
            // A navegação de cada item acontecerá aqui.
            onTap: () {
              // Deixaremos para o Passo 4.
            },
          );
        },
      ),
    );
  }
}

/*
Neste ponto, os alunos podem clicar em "Run". Após o login, eles verão a lista de tópicos, 
mas clicar neles ainda não fará nada.

Passo 3: Criar a Tela de Detalhes
Esta tela será muito simples. Seu único propósito é receber um nome de tópico e exibi-lo.

Abaixo de todo o código existente, adicione a classe TelaDeDetalhes.

Dart
*/
// Adicione este novo widget ao seu código
class TelaDeDetalhes extends StatelessWidget {
  // 1. Variável para receber o nome do tópico
  final String nomeDoTopico;

  // 2. Construtor que exige o nome do tópico
  const TelaDeDetalhes({super.key, required this.nomeDoTopico});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // 3. O título da tela também será dinâmico
        title: Text(nomeDoTopico),
      ),
      body: Center(
        child: Text(
          'Detalhes sobre: $nomeDoTopico',
          style: const TextStyle(fontSize: 22),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

/*
Passo 4: Implementar a Navegação a Partir do ListTile
Agora vamos conectar tudo. Quando o usuário tocar em um ListTile, 
devemos navegar para a TelaDeDetalhes, passando o tópico específico daquela linha.

Volte para o onTap do ListTile dentro da TelaDeLista.

Adicione a lógica de Navigator.push.

Dart
*/
// Dentro do itemBuilder, no ListTile:
onTap: () {
  // Diferente do login, aqui usamos 'push' porque queremos poder voltar.
  Navigator.push(
    context,
    MaterialPageRoute(
      // Passamos o 'topico' específico desta linha para a tela de detalhes.
      builder: (context) => TelaDeDetalhes(nomeDoTopico: topico),
    ),
  );
},

/*
Código Final e Teste
O aplicativo agora está completo. Peça aos alunos para revisarem e testarem o fluxo.

Comportamento esperado:

O app abre na tela de login.

Clicar em "Entrar" leva à TelaDeLista.

A TelaDeLista exibe todos os cinco tópicos de estudo.

Clicar no item "Navegação" abre a TelaDeDetalhes.

A TelaDeDetalhes mostra "Navegação" como seu título e exibe o texto "Detalhes sobre: 
Navegação" no corpo.

O botão "voltar" na AppBar da tela de detalhes funciona, retornando para a lista.
*/






/*
Método	O que faz na Pilha	O Usuário Pode Voltar?	Caso de Uso Principal

push()	Adiciona uma nova tela no topo.	Sim |	Navegação padrão para detalhes, formulários, etc.

pop()	Remove a tela do topo.	N/A (é a ação de voltar) |	Fechar uma tela, confirmar uma ação.

pushReplacement()	Substitui a tela atual por uma nova.	Não |	Tela de Splash, após o Login.

pushAndRemoveUntil()	Adiciona uma nova tela e remove telas anteriores.	Depende (geralmente não)
| Logout, finalização de compra, resetar o fluxo
.
popAndPushNamed()	Remove a tela atual e adiciona uma nova.	Sim (para a tela que estava antes 
da pop) | 	Substituir uma tela por outra em um mesmo nível de fluxo.
*/