import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MealItemMetadata extends StatelessWidget{
  const MealItemMetadata({super.key,required this.icon,required this.label});
  final  IconData icon;
  final String label;

  Widget build(context){
    return(
    Row(
      children: [
        Icon(icon,size: 17,color: Colors.white,),
        const SizedBox(width: 5,),
        Text(label, style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
      ],
    )
    );
  }
}