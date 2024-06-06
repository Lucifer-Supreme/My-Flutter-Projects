import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatelessWidget {
  final Function screenChange;

  const Homepage({required this.screenChange, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/logo.png",
                width: 250,
                height: 250,
                color: Colors.black,
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.white54)]),
                child: Text(
                  "Gully Cric\nScore board",
                  style: GoogleFonts.lora(fontWeight: FontWeight.bold,fontSize: 30),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 35,
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
    );
  }
}
