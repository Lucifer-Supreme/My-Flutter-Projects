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
    var isPortrait =
        MediaQuery.of(Context).size.height > MediaQuery.of(Context).size.width;
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.only(
            top: isPortrait ? 100 : 20,
            bottom: isPortrait ? 100 : 20,
            left: 50,
            right: 50),
        child: (Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            matchData.totalTeam1 == matchData.totalTeam2
                ? const Text(
                    "It's a Tie",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  )
                : Text(
                    "Team ${matchData.totalTeam1 > matchData.totalTeam2 ? matchData.team1 : matchData.team2} Wins !"
                        .toUpperCase(),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lora(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
            Container(
              padding: const EdgeInsets.only(
                  top: 10, right: 30, left: 30, bottom: 20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(150, 255, 255, 255),
                border: Border.all(color: Colors.black),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Match Data",
                      style: GoogleFonts.lora(
                          fontSize: 15, fontWeight: FontWeight.bold)),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("${matchData.team1}".toUpperCase(),
                          style: GoogleFonts.lora(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                      Text("Total runs: ${matchData.totalTeam1}",
                          style: GoogleFonts.lora(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("${matchData.team2}".toUpperCase(),
                          style: GoogleFonts.lora(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                      Text("Total runs: ${matchData.totalTeam2}",
                          style: GoogleFonts.lora(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                    ],
                  )
                ],
              ),
            ),
            ElevatedButton.icon(
                onPressed: () {
                  restart(matchData);
                },
                icon: const Icon(Icons.restart_alt),
                label: const Text("Re-Match"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(200, 255, 255, 255),
                ))
          ],
        )),
      ),
    );
  }
}
