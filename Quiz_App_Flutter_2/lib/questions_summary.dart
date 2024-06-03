import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  final List selectedAnswers;

  const QuestionsSummary({required this.selectedAnswers,required this.getSummaryData, super.key});

  final List<Map<String, Object>> getSummaryData;

  TextStyle correct(String S,String C){
    if (S!=C) {
      return const TextStyle(color: Colors.red);
    }
    else{
      return const TextStyle(color: Colors.black);
    }
  }

  Color colorPut(String S,String C){
    if (S!=C) {
      return Colors.red;
    }
    else{
      return Colors.green;
    }
  }


  @override
  Widget build(context) {
    return SizedBox(
      height: 400,
      width: 300,
      child: SingleChildScrollView(
        child: Column(

          children: getSummaryData.map(
            (data) {
              return Row(
                children: [
                  // iconPut(data['selectedAnswer'] as String,data['correctAnswer'] as String),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: colorPut(data['selectedAnswer'] as String,data['correctAnswer'] as String),
                      shape: BoxShape.circle
                    ),
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                      style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data['question'] as String,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple,
                              fontSize: 16),
                          textAlign: TextAlign.left,
                        ),

                        Text("Answer: ${data['correctAnswer'] as String}",
                          textAlign: TextAlign.left,
                          style: const TextStyle(color: Colors.black),
                        ),

                        Text(
                          "Selected: ${data['selectedAnswer'] as String}",
                          textAlign: TextAlign.left,
                          style: correct(data['selectedAnswer'] as String,data['correctAnswer'] as String),
                        ),

                        const SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  )
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
