import 'package:flutter/material.dart';
import 'package:quizify/first_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({
    super.key,
  });

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Firstscreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
