// ignore_for_file: camel_case_types, sort_child_properties_last, avoid_print, must_be_immutable

import 'package:flutter/material.dart';

class Argumentos {
  int acertos = 0;
  Argumentos(this.acertos);
}

class resultados extends StatelessWidget {
   final int acertos = 0;

  const resultados({Key? key, required acertos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Quiz")),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("Jogar", style: TextStyle(fontSize: 20)),
              Text("Você acertou\n$acertos de 10\nperguntas", style: const TextStyle(fontSize: 20)),
              ElevatedButton(
                onPressed: () {Navigator.pushNamed(context, '/');
                  print("pressionado");
                  
                },
                child: const Text("Jogar Novamente", style: TextStyle(fontSize: 30)),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
