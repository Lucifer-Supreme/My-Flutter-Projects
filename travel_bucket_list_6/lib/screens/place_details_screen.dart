import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/place.dart';

class PlaceDetailsScreen extends StatelessWidget{
  PlaceDetailsScreen({super.key, required this.place});

  final Place place;

  Widget build(context){

    return(
    Scaffold(
      appBar: AppBar(title: Text(place.title),),
      body: Center(child: Text(place.title),),
    )
    );
  }
}