import 'package:flutter/material.dart';

class Firstscreen extends StatelessWidget {
  const Firstscreen(this.quizStart, {super.key});

  final void Function() quizStart;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(
                  255,
                  55,
                  2,
                  74,
                ),
                Color.fromARGB(
                  255,
                  65,
                  1,
                  46,
                )
              ],
              end: Alignment.bottomRight,
              begin: Alignment.topLeft,
            ),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 150,
              ),
              const Image(
                image: AssetImage(
                  "assets/start_image.png",
                ),
                width: 350,
                color: Color.fromARGB(173, 253, 225, 255),
              ),
              const SizedBox(
                height: 60,
              ),
              const Text(
                "Test Your Flutter Journey!",
                style: TextStyle(
                  fontSize: 23,
                  color: Color.fromARGB(255, 255, 210, 248),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 50,
                width: 200,
                child: OutlinedButton.icon(
                  onPressed: () {
                    quizStart();
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Colors.transparent,
                    ),
                  ),
                  icon: const Icon(
                    Icons.arrow_forward_sharp,
                    color: Color.fromARGB(255, 255, 210, 248),
                  ),
                  label: const Text(
                    "Take a Look",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 255, 210, 248)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
