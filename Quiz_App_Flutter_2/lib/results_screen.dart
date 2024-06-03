import 'package:quiz_app_flutter_2/data/questions.dart';
import 'package:flutter/material.dart';
import 'questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  final Function() restart;

  ResultsScreen({required this.restart,required this.selectedAnswers, super.key});

  final List selectedAnswers;
  final int length = questions.length;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text, // Corrected getter for question text
        'correctAnswer': questions[i].answers[0],
        'selectedAnswer': selectedAnswers[i],


      });

    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {

    int x=0;
    for (var i = 0; i < length; i++) {
      if (selectedAnswers[i] == questions[i].answers[0]) {
        x++;
      }
    }

    final int y = questions.length;

    return Container(
      margin: const EdgeInsets.only(left: 20,top: 60,right: 20,bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "You Answered $x out of $y questions correctly.",
              style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 30,
          ),

          QuestionsSummary(getSummaryData: getSummaryData(), selectedAnswers:selectedAnswers),

          const SizedBox(
            height: 30,
          ),
          TextButton.icon(
            onPressed: restart,
            icon: const Icon(Icons.restart_alt),
            label: const Text("Restart"),
          ),
        ],
      ),
    );
  }
}
