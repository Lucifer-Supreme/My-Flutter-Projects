import 'package:flutter/material.dart';
import 'dart:math';
// import 'package:audioplayers/audioplayers.dart';

class imageDisplay extends StatefulWidget {
  const imageDisplay({super.key});
  @override
  State<imageDisplay> createState() {
    return _imageDisplayState();
  }
}

class _imageDisplayState extends State<imageDisplay> {
  var activeImage = 'assets/images/dice-4.png';
  // final AudioPlayer _audioPlayer=AudioPlayer();

  int counter = 0;
  spin() async {
    //await _audioPlayer.play(AssetSource('assets/sounds/button_click.mp3'));
    counter++;
    int value = Random().nextInt(6);
    value++;
    print(value);

    activeImage = 'assets/images/dice-$value.png';
    print("Changing Image...");

    setState(() {});
  }

  @override
  Widget build(BuildContext) {
    return (Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Dice Roll: $counter",
          style: const TextStyle(fontSize: 15),
        ),
        Image.asset(
          activeImage,
          width: 250,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: spin,
            //style: TextButton.styleFrom(foregroundColor: Colors.black,padding: const EdgeInsets.only(top: 20)),
            child: const Text(
              "Spin",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ))
      ],
    ));
  }
}
