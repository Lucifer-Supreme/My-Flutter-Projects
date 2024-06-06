import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Buttons extends StatelessWidget {
  final void Function() scoreAdd;
  var value;

  Buttons({required this.value, required this.scoreAdd, super.key});
  @override
  Widget build(context) {
    return (ElevatedButton(
      onPressed: () {
        scoreAdd();
      },
      child: Text(value.toString(),style: GoogleFonts.lora(fontWeight: FontWeight.bold),),
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(200, 255, 255, 255),
        padding: EdgeInsets.all(20), // Adjust padding as needed
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: CircleBorder(), // Use CircleBorder for circular shape
        minimumSize: Size(44, 44), // Set a minimum size to ensure it's clickable
      ),
    ));
  }
}
