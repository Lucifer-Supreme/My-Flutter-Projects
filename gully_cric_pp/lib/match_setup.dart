//match_setup.dart

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'match_data.dart';

class MatchSetup extends StatefulWidget {
  MatchSetup({required this.startMatch, super.key});

  final Function(String, String, int) startMatch;
  @override
  State<MatchSetup> createState() {
    return _MatchSetup();
  }
}

class _MatchSetup extends State<MatchSetup> {
  final TextEditingController _team1Controller = TextEditingController();
  final TextEditingController _team2Controller = TextEditingController();
  final TextEditingController _oversController = TextEditingController();

  void beginMatch() {
    final team1 =
        (_team1Controller.text) == "" ? "Team 1" : _team1Controller.text;
    final team2 =
        (_team1Controller.text) == "" ? "Team 2" : _team2Controller.text;
    final overs = int.tryParse(_oversController.text) ?? 1;
    widget.startMatch(team1, team2, overs);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Container(
        padding:
            const EdgeInsets.only(left: 30, right: 30, top: 150, bottom: 50),
        child: SingleChildScrollView(
          child: (Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  decoration: BoxDecoration(
                      boxShadow: [BoxShadow(color: Colors.black, blurRadius: 25)],
                      borderRadius: BorderRadius.circular(100)),
                  child: CircleAvatar(
                    radius: 70,
                    child: ClipOval(

                      child: FittedBox(
                        fit: BoxFit.cover,
                        child: Image.asset("assets/wp9220264-modified.png"),
                      ),
                    )


                  )),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 70,
                child: TextField(
                  maxLength: 10,
                  controller: _team1Controller,
                  readOnly: false,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Team 1 (First Batting)")),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 70,
                child: TextField(
                  maxLength: 10,
                  controller: _team2Controller,
                  readOnly: false,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Team 2 (Second Batting)")),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 70,
                child: TextField(
                  maxLength: 2,
                  controller: _oversController,
                  keyboardType: TextInputType.number,
                  readOnly: false,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Number of Overs (default 1 over)")),
                ),
              ),
              const SizedBox(height: 50),
              TextButton.icon(
                  onPressed: beginMatch,
                  icon: const Icon(Icons.start_sharp),
                  label: const Text("Begin !"))
            ],
          )),
        ),
      ),
    );
  }
}
