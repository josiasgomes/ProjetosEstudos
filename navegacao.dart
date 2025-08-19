/*https://meet.google.com/njg-gunb-ysu


Exercício Guiado: Fluxo de Login Simples
Objetivo: Criar um aplicativo com uma tela de login e uma tela principal. 
Ao clicar em "Entrar", o usuário vai para a tela principal e a tela de login é removida 
da memória, de forma que ele não possa usar o botão "voltar" para acessá-la novamente.

Novo Conceito Praticado:

Navegação com Navigator.pushReplacement.

Passo a Passo para os Alunos
Passo 1: A Estrutura e a Tela de Login
Vamos começar com o básico: criar nosso aplicativo e a primeira tela que o usuário verá, 
a TelaDeLogin.

Abra um DartPad limpo.

Copie e cole o código abaixo. Ele cria a estrutura e a nossa TelaDeLogin inicial.

Dart
*/
import 'package:flutter/material.dart';

void main() {
  runApp(const MeuAppLogin());
}

class MeuAppLogin extends StatelessWidget {
  const MeuAppLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Fluxo de Login',
      // A primeira tela do nosso app é a de Login.
      home: TelaDeLogin(),
    );
  }
}

//ESTA É A TELA DE LOGIN QUE ESTÁ CONFIGURADA ABAIXO
// Nossa primeira tela, totalmente estática.
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
          // A navegação acontecerá aqui
          onPressed: () {
            // Deixaremos isso para o Passo 3.
            Navigator.pushReplacement(
            context,MaterialPageRoute(builder:(context)=> const TelaPrincipal()));
          },
        ),
      ),
    );
  }
}

/*
Até aqui, os alunos podem clicar em "Run" para ver a tela de login com um botão que ainda não 
faz nada.

Passo 2: Criando a Tela Principal
Agora, vamos criar a tela de destino, a TelaPrincipal. 
Esta é a tela que o usuário verá depois de "entrar" no aplicativo.

Abaixo do código da TelaDeLogin, adicione a classe TelaPrincipal.

Dart
*/
// Adicione este novo widget ao seu código.
class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Note que não colocamos um botão de "voltar" manualmente aqui.
        title: const Text('Página Principal'),
      ),
      body: const Center(
        child: Text(
          'Você entrou com sucesso!',
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}

/*A tela está criada, mas ainda não há como chegar nela.

Passo 3: A Navegação que Substitui (pushReplacement)
É aqui que a mágica acontece. Em vez de usar Navigator.push, que simplesmente adiciona a 
nova tela no topo da pilha, usaremos Navigator.pushReplacement. Este método joga fora a 
tela atual (Login) e a substitui pela nova (Principal).

Volte para o onPressed do botão "Entrar" na TelaDeLogin.

Adicione o código de navegação usando pushReplacement.

Dart
*/

// Dentro do onPressed da TelaDeLogin:
onPressed: () {
  // Explicação:
  // 'pushReplacement' navega para uma nova tela E remove a tela
  // anterior (TelaDeLogin) do histórico de navegação.
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const TelaPrincipal()),
  );
},
/*
Passo 4: Código Final e Teste
Agora o exercício está completo. Peça aos alunos que verifiquem o código final e testem o 
comportamento com atenção.

Comportamento para Observar:

O app abre na TelaDeLogin.

Ao clicar em "Entrar", a TelaPrincipal aparece.

O mais importante: Observe que não há seta de "voltar" na barra de título da TelaPrincipal. 
Isso acontece porque o Flutter sabe que não há tela anterior na pilha para a qual voltar. 
A TelaDeLogin foi substituída!
*/