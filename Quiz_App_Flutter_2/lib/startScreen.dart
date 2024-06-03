import 'package:flutter/material.dart';


class StartScreen extends StatelessWidget{
  const StartScreen (this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return (
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/quiz-logo.png',
                width: 300,
                height: 300,
                color: Colors.amberAccent,
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Rowdy Quiz Presents-\nTech Quiz 2.0",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 50,
              ),
              // TextButton(
              //   onPressed: () {},
              //   child: const Text(
              //     "Click to Begin!",
              //     style: TextStyle(
              //       fontSize: 15,
              //       color: Colors.deepPurple,
              //       letterSpacing: 0.7,
              //     ),
              //   ),
              // )
              OutlinedButton.icon(
                onPressed: () {
                  startQuiz();
                },
                icon: const Icon(Icons.arrow_right_alt,color: Colors.black),

                style: OutlinedButton.styleFrom(),
                label: const Text(
                  "Click to Begin!",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    letterSpacing: 0.7,
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}