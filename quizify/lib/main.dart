import 'package:flutter/material.dart';
import 'package:quizify/first_screen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 11, 2, 74),
                Color.fromARGB(255, 0, 22, 144)
              ],
              end: Alignment.bottomCenter,
              begin: Alignment.topLeft,
            ),
          ),
          child: const Firstscreen(),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
