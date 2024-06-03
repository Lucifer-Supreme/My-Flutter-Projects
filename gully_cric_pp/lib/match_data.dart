//match_data.dart

import 'package:flutter/material.dart';

class MatchData {
  MatchData({required this.team1,required this.team2,required this.overs});
  String team1 = 'Team 1';
  String team2 = 'Team 2';
  int overs = 1;


  late List<dynamic> scoreTeam1 = [];
  late List<dynamic> scoreTeam2 = [];
  late int totalTeam1 = 0;
  late int totalTeam2 = 0;

}