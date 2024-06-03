import 'package:flutter/material.dart';
import 'package:quiz_app_flutter_2/question_screen.dart';
import 'package:quiz_app_flutter_2/startScreen.dart';
import 'data/questions.dart';
import 'results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz ({super.key});
  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{



  List<String>selectedAnswers=[];
  late Widget activeScreen;

  void chosenAnswer(String answer){
    selectedAnswers.add(answer);
    if(counter==questions.length-1){
      setState(() {
        activeScreen=ResultsScreen( selectedAnswers:selectedAnswers, restart: restart,);
      });
    }
  }

  @override
  void initState(){
    activeScreen = StartScreen(switchScreen);
    super.initState();
    counter=0;
  }

  void restart(){
    setState(() {
      activeScreen = StartScreen(switchScreen);
      selectedAnswers=[];
      counter=0;
    });
  }

  void switchScreen(){
    setState(() {
      activeScreen = QuestionScreen(chosenAnswer);
    });
  }

  @override
  Widget build(context){
    return(MaterialApp(
      home:Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Text(
              "Rowdy Quiz",
              style: TextStyle(color: Colors.white),
            ),
            elevation: 20,
          ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue,Colors.green],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen,

        ),
      ),
    )

    );

  }

}