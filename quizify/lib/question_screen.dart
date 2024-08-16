import 'package:flutter/material.dart';
import 'package:quizify/Widgets/custom_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 55, 2, 74),
            Color.fromARGB(255, 65, 1, 46)
          ],
          end: Alignment.bottomRight,
          begin: Alignment.topLeft,
        ),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "here is my Question 1",
            style: TextStyle(
              color: Color.fromARGB(255, 255, 210, 248),
              fontSize: 25,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          anwerButtons(),
          anwerButtons(),
          anwerButtons(),
          anwerButtons(),
        ],
      ),
    ));
  }
}
