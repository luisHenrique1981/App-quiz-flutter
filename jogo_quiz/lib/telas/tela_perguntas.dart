// ignore_for_file: camel_case_types, library_private_types_in_public_api, unused_import, avoid_print, avoid_function_literals_in_foreach_calls

import 'package:flutter/material.dart';
import 'package:jogo_quiz/telas/resultados.dart';

class perguntasquiz extends StatefulWidget {
  const perguntasquiz({Key? key}) : super(key: key);

  @override
  _perguntasquizState createState() => _perguntasquizState();
}

class _perguntasquizState extends State<perguntasquiz> {
  // Variável para rastrear o número de acertos

  List quiz = [
    {
      "pergunta": "No desenho 'Jovens Titas', qual é o personagem que tem poderes de se transformar em animais?",
      "respostas": ["Robin", "Estelar", "Mutano", "Ravena"],
      "alternativa_correta": 2,
    },
    {
      "pergunta": "No desenho 'Ben10', qual foi o primeiro alien que o Ben se transformou?",
      "respostas": ["Chamas", "Quatro-braços", "XRL8", "Diamante"],
      "alternativa_correta": 2,
    },

    (
      {
        "pergunta": "No desenho 'Winx', qual personagem tem um coelho de estimação?",
        "respostas": ["Stella", "Bloom", "Musa", "Flora"],
        "alternativa_correta": 1,
      }
    ),

    (
      {
        "pergunta": "No desenho 'Steven Universo', qual fusão compõe a personagem 'Garnet'?",
        "respostas": ["Lápis Lazúli e Jasper", "Pérola e Ametista", "Ruby e Safira", "Steven e Connie"],
        "alternativa_correta": 2,
      }
    ),

    (
      {
        "pergunta": "No desenho 'Ladybug', qual é a identidade do vilão conhecido como 'Hawk Moth'?",
        "respostas": ["Adrian Agreste", "Gabriel Agreste", "Emily Agreste", "Amélie Agreste"],
        "alternativa_correta": 1,
      }
    ),

    (
      {
        "pergunta": "No anime 'Naruto', qual é o nome do segundo Hokage?",
        "respostas": ["Naruto Uzumaki", "Hashirama Senju", "Tobirama Senju", "Minato Namikaze"],
        "alternativa_correta": 2,
      }
    ),

    (
      {
        "pergunta": "No desenho 'Avatar a lenda de korra', na primeira temporada, qual é o único elemento que Korra não conseguia dominar?",
        "respostas": ["Água", "Terra", "Ar", "Fogo"],
        "alternativa_correta": 2,
      }
    ),

    (
      {
        "pergunta": "No desenho 'Hora de Aventura' quem são os dois protagonistas?",
        "respostas": ["Finn e Jake", "Marceline e Jujuba", "Ricardio e Lemon Grab", "Menta e BMO"],
        "alternativa_correta": 1,
      }
    ),

     (
      {
        "pergunta": "No desenho 'Scooby-Doo' qual era os biscoitos que o grupo dava para Scooby e Salcicha?",
        "respostas": ["Passatempo", "Biscoitos Scooby", "Mabel", "Bauduco"],
        "alternativa_correta": 1,
      }
    ),

    (
      {
        "pergunta": "No desenho 'As Terríveis Aventuras de Billy e Mandy' qual personagem era a morte?",
        "respostas": ["Mandy", "Ceifador", "Puro-Osso", "Billy"],
        "alternativa_correta": 2,
      }
    ),
  ];

  int numeropergunta = 1;
  int acertos = 0;
  int erros = 0; 

  @override
  Widget build(BuildContext context) {
    quiz.shuffle();

    quiz.forEach((elemento) {
      print(elemento['respostas']);
      print(elemento['alternativa_correta']);

      int alternativaCorreta = elemento['alternativa_correta'];
      List respostas = elemento['respostas'];

      String respostaCorreta = elemento['respostas'][alternativaCorreta - 1];
      print(respostaCorreta);

      respostas.shuffle();
      int i = 0;
      respostas.forEach((elemento) {
        print(elemento);
        if(elemento == respostaCorreta){
          alternativaCorreta == i;
        }
        i++;
       });
       elemento['alternativa_correta'] = alternativaCorreta;
     });
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Quiz"),
        backgroundColor: const Color(0xffb02419),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xffb02419), Color(0xffff00e8)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Text('Pergunta $numeropergunta de ${quiz.length}', style: const TextStyle(fontSize: 20, color: Colors.white)),
              ),
              Text(
                quiz[numeropergunta - 1]['pergunta'], // Exibe a pergunta atual
                style: const TextStyle(fontSize: 20, color: Colors.white),
                textAlign: TextAlign.center,
              ),
             ElevatedButton(
  onPressed: () {
    _checkAnswer(1);
  },
  style: ButtonStyle(
    minimumSize: MaterialStateProperty.all(const Size(double.infinity, 60)), // Defina a largura desejada aqui
  ),
  child: Text(quiz[numeropergunta - 1]['respostas'][0], style: const TextStyle(fontSize: 20, color: Colors.white)),
),
ElevatedButton(
  onPressed: () {
    _checkAnswer(2);
  },
  style: ButtonStyle(
    minimumSize: MaterialStateProperty.all(const Size(double.infinity, 60)), // Defina a largura desejada aqui
  ),
  child: Text(quiz[numeropergunta - 1]['respostas'][1], style: const TextStyle(fontSize: 20, color: Colors.white)),
),
ElevatedButton(
  onPressed: () {
    _checkAnswer(3);
  },
  style: ButtonStyle(
    minimumSize: MaterialStateProperty.all(const Size(double.infinity, 60)), // Defina a largura desejada aqui
  ),
  child: Text(quiz[numeropergunta - 1]['respostas'][2], style: const TextStyle(fontSize: 20, color: Colors.white)),
),
ElevatedButton(
  onPressed: () {
    _checkAnswer(4);
  },
  style: ButtonStyle(
    minimumSize: MaterialStateProperty.all(const Size(double.infinity, 60)), // Defina a largura desejada aqui
  ),
  child: Text(quiz[numeropergunta - 1]['respostas'][3], style: const TextStyle(fontSize: 20, color: Colors.white)),
),

            ],
          ),
        ),
      ),
    );
  }

  void _checkAnswer(int selectedAnswer) {
  if (selectedAnswer == quiz[numeropergunta - 1]['alternativa_correta']) {
    acertos++;
  }
  else{
    erros++;
  }

  setState((){
    if(numeropergunta < quiz.length){
      numeropergunta++;
    }
    else {
      _showResults(acertos);
    }

    
  });
}
  void _showResults(int acertou)
  {
    Navigator.pushNamed(context, 'resultados', arguments: acertou);
  }
}