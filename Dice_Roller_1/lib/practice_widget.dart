import 'package:flutter/material.dart';
import 'images.dart';

class MyHomepage extends StatelessWidget {
  const MyHomepage(this.text, this.start, this.mid, this.end, {super.key});

  final String text;
  final MaterialColor start;
  final MaterialColor mid;
  final MaterialColor end;


  @override
  Widget build(context) {
    return (Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [start, mid, end],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
          child:imageDisplay()

          //  Text(
          //   text,
          //   style: const TextStyle(
          //       fontSize: 20,
          //       fontWeight: FontWeight.bold,
          //       fontStyle: FontStyle.italic,
          //       color: Colors.blue),
          //   textAlign: TextAlign.center,
          // ),
          ),
    ));
  }
}
