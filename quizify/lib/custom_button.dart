import 'package:flutter/material.dart';

class anwerButtons extends StatelessWidget {
  const anwerButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
        height: 46,
        width: 250,
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
          onPressed: () {},
          child: const Text(
            "Anwer1",
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
            ),
          ),
        ),
      ),
    );
  }
}
