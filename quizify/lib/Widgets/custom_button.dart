import 'dart:ffi';

import 'package:flutter/material.dart';

class answerButtons extends StatelessWidget {
  answerButtons({
    super.key,
    required this.answerText,
    required this.onpressed,
  });

  final String answerText;
  final void Function() onpressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 17),
      child: SizedBox(
        width: 260,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: const MaterialStatePropertyAll(
              Color.fromARGB(255, 78, 2, 64),
            ),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                side: const BorderSide(
                  color: Color.fromARGB(255, 252, 209, 255),
                  width: 2,
                ),
              ),
            ),
          ),
          onPressed: onpressed,
          child: Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: Text(
              answerText,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
