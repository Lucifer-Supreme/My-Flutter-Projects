import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travel_bucket_list_6/screens/place_details_screen.dart';

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
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (ctx) =>
                            PlaceDetailsScreen(place: places[index])));
              },
              title: Text(places[index].title),
            )));
  }
}
