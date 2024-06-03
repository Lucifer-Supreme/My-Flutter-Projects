//resultScreen.dart

import 'package:flutter/material.dart';
import 'match_data.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  MatchData matchData;

  Function(MatchData matchdata) restart;

  ResultScreen({required this.restart, required this.matchData, super.key});

  @override
  Widget build(Context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.only(top: 100, bottom: 100, left: 50, right: 50),
        child: (Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            matchData.totalTeam1 == matchData.totalTeam2
                ? Text(
                    "It's a Tie",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  )
                : Text(
                    "Team ${matchData.totalTeam1 > matchData.totalTeam2 ? matchData.team1 : matchData.team2}\nWins !".toUpperCase(),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lora(fontSize: 50, fontWeight: FontWeight.bold),
                  ),

            Container(
              padding:
                  EdgeInsets.only(top: 10, right: 30, left: 30, bottom: 20),
              decoration: BoxDecoration(
                  color: Color.fromARGB(200, 255, 255, 255),
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [BoxShadow(color: Colors.black, blurRadius: 25)]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Match Data"),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("${matchData.team1}".toUpperCase()),
                      Text("Total runs: ${matchData.totalTeam1}"),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("${matchData.team2}".toUpperCase()),
                      Text("Total runs: ${matchData.totalTeam2}"),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            TextButton.icon(
              onPressed: () {
                restart(matchData);
              },
              icon: Icon(Icons.replay_sharp),
              label: Text("Re-Match"),
            )
          ],
        )),
      ),
    );
  }
}
