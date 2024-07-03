import 'package:flutter/material.dart';
import 'package:travel_bucket_list_6/widgets/places_list.dart';

class PlacesListScreen extends StatelessWidget {
  PlacesListScreen({super.key});

  Widget build(context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("Your Places"),
      ),
      body: PlacesList(places: []),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    ));
  }
}
