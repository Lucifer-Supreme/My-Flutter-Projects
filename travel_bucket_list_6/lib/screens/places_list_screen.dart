import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_bucket_list_6/providers/user_places.dart';
import 'package:travel_bucket_list_6/screens/add_place_screen.dart';
import 'package:travel_bucket_list_6/widgets/places_list.dart';

class PlacesListScreen extends ConsumerWidget {
  PlacesListScreen({super.key});


  Widget build(context,WidgetRef ref) {
    final userPlaces = ref.watch(userPlacesProvider);
    return (Scaffold(
      appBar: AppBar(
        title: Text("Your Places"),
      ),
      body: PlacesList(places: userPlaces),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (ctx)=>AddPlaceScreen()));
        },
        child: Icon(Icons.add),
      ),
    ));
  }
}
