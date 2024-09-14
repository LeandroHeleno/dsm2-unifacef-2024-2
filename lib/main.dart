import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Classe principal do aplicativo
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// Tela principal do aplicativo
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Layout());
  }
}

// Layout da interface com 4 linhas
class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Primeira linha: Nome completo
        Expanded(
          child: Container(
            color: Colors.purple[400],
            height: 150,
            child: const Center(
              child: Text(
                'Leandro Lopes Heleno', // Nome completo
                style: TextStyle(
                  color: Colors.white, // Texto branco
                  fontSize: 30, // Tamanho de fonte 30
                  fontWeight: FontWeight.bold, // Negrito
                ),
                textAlign: TextAlign.center, // Centralizado horizontalmente
              ),
            ),
          ),
        ),
        // Segunda linha: Data da prova
        Expanded(
          child: Container(
            color: Colors.green[400],
            height: 150,
            child: const Center(
              child: Text(
                '19/09/2024', // Data da prova
                style: TextStyle(
                  color: Colors.orange, // Laranja escuro
                  fontSize: 24, // Tamanho de fonte
                ),
                textAlign: TextAlign.center, // Centralizado horizontalmente
              ),
            ),
          ),
        ),
        // Terceira linha: 4 colunas com ícones
        Expanded(
          child: Row(
            children: [
              // Primeira coluna com um ícone centralizado
              Expanded(
                child: Container(
                  color: Colors.blue[400],
                  child: const Center(
                    child: Icon(Icons.home, size: 50, color: Colors.white), // Ícone de casa
                  ),
                ),
              ),
              // Segunda coluna com dois ícones
              Expanded(
                child: Container(
                  color: Colors.amber[400],
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, // Ícones distribuídos entre o topo e a base
                    children: [
                      Icon(Icons.star, size: 50, color: Colors.white), // Ícone no topo
                      Icon(Icons.favorite, size: 50, color: Colors.white), // Ícone no fundo
                    ],
                  ),
                ),
              ),
              // Terceira coluna com um ícone
              Expanded(
                child: Container(
                  color: Colors.pink[400],
                  child: const Center(
                    child: Icon(Icons.thumb_up, size: 50, color: Colors.white), // Ícone centralizado
                  ),
                ),
              ),
              // Quarta coluna com um ícone
              Expanded(
                child: Container(
                  color: Colors.cyan[400],
                  child: const Center(
                    child: Icon(Icons.lightbulb, size: 50, color: Colors.white), // Ícone centralizado
                  ),
                ),
              ),
            ],
          ),
        ),
        // Quarta linha: Nome da turma
        Expanded(
          child: Container(
            color: Colors.red[400],
            padding: const EdgeInsets.only(right: 16.0), // Espaço à direita
            alignment: Alignment.centerRight, // Alinhado à direita
            child: const Text(
              'Engenharia de software', // Nome da turma
              style: TextStyle(
                fontSize: 25, // Tamanho de fonte 25
                fontStyle: FontStyle.italic, // Texto em itálico
                color: Colors.white, // Cor branca
              ),
            ),
          ),
        ),
      ],
    );
  }
}
