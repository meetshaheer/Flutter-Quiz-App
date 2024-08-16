import 'package:flutter/material.dart';
import 'package:quizify/Widgets/custom_button.dart';
import 'package:quizify/data/quiz_data.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    final activeQuestion = questions[0];
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
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 30,
                right: 30,
              ),
              child: Text(
                activeQuestion.text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color.fromARGB(255, 255, 210, 248),
                  fontSize: 25,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70, right: 70),
            child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: activeQuestion.answers.length,
                itemBuilder: (context, index) {
                  return answerButtons(
                      answerText: activeQuestion.answers[index], ontap: () {});
                }),
          ),
        ],
      ),
    ));
  }
}
