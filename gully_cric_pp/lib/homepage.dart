import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatelessWidget {
  final Function screenChange;

  const Homepage({required this.screenChange, super.key});

  @override
  Widget build(BuildContext context) {
    var isPortrait=MediaQuery.of(context).size.height>MediaQuery.of(context).size.width;
    return Center(
      child: SingleChildScrollView(
        child: SizedBox(
          child: Container(
            margin: EdgeInsets.only(top: isPortrait?50:0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  "assets/logo.png",
                  width: 250,
                  height: 250,
                  color: Colors.black,
                ),
                SizedBox(
                  height: isPortrait?50:0,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    decoration: const BoxDecoration(boxShadow: [BoxShadow(color: Colors.white54)]),
                    child: Text(
                      "Gully Cricket Score Card",
                      style: GoogleFonts.lora(fontWeight: FontWeight.bold,fontSize: 30),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: isPortrait?35:0,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    screenChange();
                  },

                  icon: const Icon(Icons.arrow_circle_right),
                  label: const Text("Start Match!"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
