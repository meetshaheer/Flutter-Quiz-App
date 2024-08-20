import 'package:flutter/material.dart';
import 'package:quizify/Widgets/custom_button.dart';
import 'package:quizify/data/quiz_data.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void questionAnswer() {
    setState(() {
      currentQuestionIndex = currentQuestionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final activeQuestion = questions[currentQuestionIndex];
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Text(
                activeQuestion.question,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color.fromARGB(255, 255, 210, 248),
                  fontSize: 25,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ...activeQuestion.getShuffledList().map(
              (answer) {
                return answerButtons(
                  answerText: answer,
                  onpressed: questionAnswer,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
