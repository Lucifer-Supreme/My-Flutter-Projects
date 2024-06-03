//gully_cric.dart

import 'package:flutter/material.dart';
import 'package:gully_cric_pp/homepage.dart';
import 'package:gully_cric_pp/match_setup.dart';
import 'package:gully_cric_pp/result_screen.dart';
import 'package:gully_cric_pp/score_card.dart';
import 'match_data.dart';

class gullyCric extends StatefulWidget {
  const gullyCric({super.key});

  @override
  State<gullyCric> createState() {
    return _gullyCric();
  }
}

class _gullyCric extends State<gullyCric> {
  late Widget currentPage;


  void screenChange(){
    setState(() {
      currentPage=MatchSetup(startMatch: startMatch);
    });
  }


  void resultScreen(MatchData matchData){

    setState(() {
      currentPage = ResultScreen( matchData: matchData, restart: rematch);
    });
  }


  void startMatch(String team1, String team2, int overs) {
    var matchData = MatchData(team1: team1, team2: team2, overs: overs);
    setState(() {
      currentPage = ScoreCard(Matchdata: matchData, resultScreen: resultScreen, restart: rematch);
    });
  }

  void rematch(MatchData matchdata){
    matchdata.totalTeam1=0;
    matchdata.totalTeam2=0;
    matchdata.team1="Team 1";
    matchdata.team2="Team 2";
    matchdata.overs=1;
    matchdata.scoreTeam1=[];
    matchdata.scoreTeam2=[];
    setState(() {
      currentPage=Homepage(screenChange: screenChange);
    });
  }

  @override
  void initState(){
    currentPage = Homepage(screenChange: screenChange);
    super.initState();

  }


  @override
  Widget build(context) {
    return (MaterialApp(
      home: Scaffold(

          body: Center(
            child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.blue, Colors.green],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
              child: currentPage,
            ),
          )),
    ));
  }
}
