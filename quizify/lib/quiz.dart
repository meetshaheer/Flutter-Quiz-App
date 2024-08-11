import 'package:flutter/material.dart';
import 'package:quizify/first_screen.dart';
import 'package:quizify/question_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({
    super.key,
  });

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = Firstscreen(switchScreen);
  //   super.initState();
  // }

  // void switchScreen() {
  //   setState(() {
  //     activeScreen = const QuestionScreen();
  //   });
  // }
  //
  ///
  ///
  ///
  /// Context screen onpressed button passing the argument screen
  ///
  ///
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = Firstscreen(switchScreen);
    super.initState();
  }

  switchScreen() {
    setState(() {
      activeScreen = const QuestionScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: activeScreen,
      debugShowCheckedModeBanner: false,
    );
  }
}
