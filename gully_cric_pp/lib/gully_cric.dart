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
  var currentScreen='normal';

  void screenChange() {
    setState(() {
      currentPage = MatchSetup(startMatch: startMatch);
    });
  }

  void resultScreen(MatchData matchData) {
    setState(() {
      currentPage = ResultScreen(matchData: matchData, restart: rematch);
      currentScreen="ResultScreen";
    });
  }

  void startMatch(String team1, String team2, int overs) {
    var matchData = MatchData(team1: team1, team2: team2, overs: overs);
    setState(() {
      currentPage = ScoreCard(
          Matchdata: matchData, resultScreen: resultScreen, restart: rematch);
    });
  }

  void rematch(MatchData matchdata) {
    matchdata.totalTeam1 = 0;
    matchdata.totalTeam2 = 0;
    matchdata.team1 = "Team 1";
    matchdata.team2 = "Team 2";
    matchdata.overs = 1;
    matchdata.scoreTeam1 = [];
    matchdata.scoreTeam2 = [];
    currentScreen='normal';
    setState(() {
      currentPage = Homepage(screenChange: screenChange);
    });
  }

  @override
  void initState() {
    currentPage = Homepage(screenChange: screenChange);
    super.initState();
  }

  @override
  Widget build(context) {
    var currentBackground = currentScreen=="ResultScreen"
        ? const DecorationImage(
            image: AssetImage("assets/winning.jpg"),
            fit: BoxFit.cover,
            alignment: Alignment.center)
        : const DecorationImage(
            image: AssetImage("assets/background.jpg"),
            fit: BoxFit.cover,
            alignment: Alignment.center);

    return (MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              image: currentBackground,
            ),
            child: currentPage,
          ),
        ),
      ),
    ));
  }
}
