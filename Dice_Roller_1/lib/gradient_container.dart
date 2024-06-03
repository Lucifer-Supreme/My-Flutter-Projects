import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context){
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [Colors.deepPurple, Colors.purpleAccent],
          radius: 1.3,
        ),
      ),
      child: const Center(
        child: Text(
          "Hello\nWorld !!",
          style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 30),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
