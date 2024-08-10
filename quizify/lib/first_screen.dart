import 'package:flutter/material.dart';

class Firstscreen extends StatelessWidget {
  const Firstscreen({super.key});

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
                width: 250,
              ),
              const SizedBox(
                height: 100,
              ),
              const Text(
                "Test Your Flutter Journey",
                style: TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(
                    255,
                    254,
                    221,
                    255,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Colors.transparent,
                    ),
                  ),
                  child: const Text(
                    "Take a Look",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(
                        255,
                        254,
                        238,
                        255,
                      ),
                    ),
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
