// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class telaquiz extends StatefulWidget {
  const telaquiz({Key? key}) : super(key: key);

  @override
  State<telaquiz> createState() => _TelaQuizState();
}

class _TelaQuizState extends State<telaquiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remover a seta de retorno
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.asset('assets/images/Scooby_logo2.jpg'),
                const SizedBox(height: 20.0),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'Quiz');
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(30.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  backgroundColor: Colors.pink,
                ),
                child: const Text(
                  'Jogar',
                  style: TextStyle(color: Colors.white, fontSize: 19.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
