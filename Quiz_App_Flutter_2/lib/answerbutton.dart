import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  AnswerButton({required this.answerText, required this.onTap, super.key});
  String answerText;
  final void Function() onTap;
  @override
  Widget build(context) {
    return (ElevatedButton(
      onPressed: () {
        onTap();
      },
      style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent,padding: const EdgeInsets.only(left: 30,right: 30,top: 5,bottom: 5)),
      child: Text(
        answerText,
        style: const TextStyle(color: Colors.white),
        textAlign: TextAlign.center,
      ),
    ));
  }
}
