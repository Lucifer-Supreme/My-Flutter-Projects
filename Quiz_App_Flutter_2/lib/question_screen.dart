import 'package:flutter/material.dart';
import 'answerbutton.dart';
import 'data/questions.dart';
import 'package:google_fonts/google_fonts.dart';


class QuestionScreen extends StatefulWidget {
  const QuestionScreen(this.chosenAnswer,{super.key});

  final void Function(String answer) chosenAnswer;

  @override
  _QuestionScreen createState() {
    return _QuestionScreen();
  }
}

var counter = 0;


class _QuestionScreen extends State<QuestionScreen> {
  void onTap(String selectedAnswer) {

    widget.chosenAnswer(selectedAnswer);
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[counter];

    return Center(
      child: Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            (Text(
              currentQuestion.text,
              style: GoogleFonts.josefinSans(
                color: Colors.cyanAccent,
                fontSize: 25,
              ),textAlign: TextAlign.center,
            )),
            const SizedBox(
              height: 20,
            ),

            //Dynamically generated shuffeled list of answers and map to buttons
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(answerText: answer, onTap: (){
                onTap(answer);
              });

            }),
            Text("$counter"),
          ],
        ),
      ),
    );
  }
}
