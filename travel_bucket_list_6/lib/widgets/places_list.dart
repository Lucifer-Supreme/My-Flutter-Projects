import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../models/place.dart';

class PlacesList extends StatelessWidget {
  const PlacesList({super.key, required this.places});

  final List<Place> places;

  Widget build(context) {
    if (places.isEmpty) {
      return (Center(
        child: Text("No places added yet"),
      ));
    }
    return (ListView.builder(
        itemCount: places.length,
        itemBuilder: (ctx, index) => ListTile(
              title: Text(places[index].title),
            )));
  }
}
