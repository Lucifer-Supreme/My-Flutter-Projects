import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  void Function(Object)scoreAdd;
  var value;

  Buttons({required this.value,required this.scoreAdd,super.key});
  @override
  Widget build(context){
    return(Scaffold(body:Container(
      decoration: BoxDecoration(boxShadow: const [BoxShadow(color: Colors.black,blurRadius: 30,spreadRadius: 1)],borderRadius: BorderRadius.circular(20)),
      child: ElevatedButton(
        onPressed: () {
          scoreAdd(value);
        },
        child: Text(value.toString()),
      ),
    ),)
    );
  }
}