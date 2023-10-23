// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors
//Instituto Federal de Rondônia - IFRO - Campus Calama
//2° Informática Matutino
//Trabalho feito em dupla
//Discentes: Alan Guilherme Oliveira Souza e Luis Henrique Oliveira da Silva

import 'package:flutter/material.dart';
import 'package:jogo_quiz/telas/resultados.dart';
import 'package:jogo_quiz/telas/tela_perguntas.dart';
import 'package:jogo_quiz/telas/tela_quiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // Você não precisa da variável 'acertos' aqui
  const MyApp({Key? key});
  
  get acertos => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) =>  telaquiz(), // Use TelaQuiz em vez de telaquiz
        'Quiz': (context) => perguntasquiz(),
        'resultados': (context) {
          final args = ModalRoute.of(context)!.settings.arguments as int;
          return resultados(acertos: args);
        }
      },
    );
  }
}
