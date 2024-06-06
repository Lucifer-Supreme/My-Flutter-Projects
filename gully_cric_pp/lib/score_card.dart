//score_card.dart

import 'package:flutter/material.dart';
import 'package:gully_cric_pp/buttons.dart';
import 'package:gully_cric_pp/match_data.dart';

class ScoreCard extends StatefulWidget {
  final MatchData Matchdata;

  void Function(MatchData matchdata) resultScreen;

  Function(MatchData matchdata) restart;

  ScoreCard(
      {required this.restart,
      required this.resultScreen,
      required this.Matchdata,
      super.key});
  @override
  State<ScoreCard> createState() {
    return _ScoreCardState();
  }
}

class _ScoreCardState extends State<ScoreCard> {
  int counter = 0;
  var currentBatting = 1;

  void battingSwitch() {
    currentBatting = 2;
    counter = 0;
  }

  scoreAdd({required var Score}) {
    counter++;
    if (currentBatting == 1) {
      if (counter == (widget.Matchdata.overs * 6)) {
        widget.Matchdata.scoreTeam1.add(Score);
        print("score $Score");
        if (Score is int) {
          TotalRun(Score);
        }
        battingSwitch();
      } else {
        widget.Matchdata.scoreTeam1.add(Score);
        print("score $Score");
        if (Score is int) {
          TotalRun(Score);
        }
        if (Score == "No Ball") {
          counter--;
        }
      }
    } else {
      if (counter == (widget.Matchdata.overs * 6)) {
        widget.Matchdata.scoreTeam2.add(Score);
        if (Score is int) {
          TotalRun(Score);
        }
        print("score $Score");
        widget.resultScreen(widget.Matchdata);
        //ResultScreen
      } else {
        widget.Matchdata.scoreTeam2.add(Score);
        if (Score is int) {
          TotalRun(Score);
        }
        if (Score == "No Ball") {
          counter--;
        }
        print("score $Score");
        if (widget.Matchdata.totalTeam2 > widget.Matchdata.totalTeam1) {
          widget.resultScreen(widget.Matchdata);
        }
      }
    }
    setState(() {});
  }

  int TotalRun(int run) {
    if (currentBatting == 1) {
      widget.Matchdata.totalTeam1 += run;
      return widget.Matchdata.totalTeam1;
    } else {
      return widget.Matchdata.totalTeam2 += run;
    }
  }

  allOut() {
    setState(() {
      if (currentBatting == 1) {
        currentBatting = 2;
        counter = 0;
      } else {
        widget.resultScreen(widget.Matchdata);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var isPortrait=MediaQuery.of(context).size.height>MediaQuery.of(context).size.width;

    Widget content=Container(
      padding: EdgeInsets.only(right: 40, left: 40, bottom: 10, top: isPortrait?100:0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            child: Text(
              "${currentBatting == 1 ? widget.Matchdata.team1 : widget.Matchdata.team2}'s  Batting"
                  .toUpperCase(),
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
              height: 100,
              width: double.infinity,
              child: Container(
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: Color.fromARGB(200, 255, 255, 255),
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(color: Colors.black, blurRadius: 25)
                    ]),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    ///////////
                    ///////////
                    ///////////
                    ///////////
                    children: (currentBatting == 1
                        ? widget.Matchdata.scoreTeam1
                        : widget.Matchdata.scoreTeam2)
                        .asMap()
                        .entries
                        .map(
                          (entry) => Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: entry.value.toString() == "Wicket"
                                  ? Colors.red
                                  : entry.value.toString() == "Dot Ball"
                                  ? Colors.lime
                                  : entry.value.toString() ==
                                  "No Ball"
                                  ? Colors.grey
                                  : Colors.green,
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black),
                              //boxShadow: [BoxShadow(color: Colors.black38,blurRadius: 5,spreadRadius: 2)]
                            ),
                            child: SizedBox(
                              height: 30,
                              width: 30,
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  entry.value.toString(),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          )
                        ],
                      ),
                    )
                        .toList(),
                    /////////////
                    /////////////
                    /////////////
                    /////////////
                  ),
                ),
              )
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(color: Color.fromARGB(170, 255, 255, 255)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text("Target:"),
                    Text((currentBatting == 1 ? 0 : widget.Matchdata.totalTeam1)
                        .toString()),
                  ],
                ),
                Column(
                  children: [
                    Text("Total Runs:"),
                    Text((currentBatting == 1
                        ? widget.Matchdata.totalTeam1
                        : widget.Matchdata.totalTeam2)
                        .toString()),
                  ],
                ),
                Column(
                  children: [
                    Text("Balls left:"),
                    Text((((widget.Matchdata.overs) * 6) - counter).toString()),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //Buttons(value: 1, scoreAdd: scoreAdd(Score: 1)),

              ElevatedButton(
                onPressed: () {
                  scoreAdd(Score: 1);
                },
                child: Text("1"),
              ),
              ElevatedButton(
                onPressed: () {
                  scoreAdd(Score: 2);
                },
                child: Text("2"),
              ),
              ElevatedButton(
                onPressed: () {
                  scoreAdd(Score: 3);
                },
                child: Text("3"),
              ),
              ElevatedButton(
                onPressed: () {
                  scoreAdd(Score: 4);
                },
                child: Text("4"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  scoreAdd(Score: 6);
                },
                child: Text("6"),
              ),
              ElevatedButton(
                onPressed: () {
                  scoreAdd(Score: "No Ball");
                },
                child: Text("No ball"),
              ),
              ElevatedButton(
                onPressed: () {
                  scoreAdd(Score: "Wicket");
                },
                child: Text("Wicket"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  scoreAdd(Score: "Dot Ball");
                },
                child: Text("Dot Ball"),
              ),
              ElevatedButton(
                onPressed: allOut,
                child: Text("All out"),
              ),
            ],
          ),
          ElevatedButton.icon(
            onPressed: () {
              widget.restart(widget.Matchdata);
            },
            icon: Icon(Icons.start),
            label: Text("Re-Match"),
          )
        ],
      ),
    );

//////////////////////////////////////////////////////////////////////////////////

    if (!isPortrait){
      content = SingleChildScrollView(child:content);
    }

    return (SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: content
    )
    );
  }
}
