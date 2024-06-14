import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ripple_meals_app_4/models/meal.dart';

class MealItemDetailScreen extends StatefulWidget {
  MealItemDetailScreen(
      {super.key,
      required this.favoriteMeals,
      required this.meal,
      required this.categoryColor,
      required this.onToggleFavorite});

  Color categoryColor;
  Meal meal;
  int counter = 0;
  final void Function(Meal) onToggleFavorite;
  final List<Meal> favoriteMeals;

  State<MealItemDetailScreen> createState() {
    return StateMealItemDetails();
  }
}

class StateMealItemDetails extends State<MealItemDetailScreen> {
  void favoriteToggleMessage(bool added) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        duration: const Duration(seconds: 2),
        content: added
            ? const Text(
                "Meal Added to favorites...",
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
              )
            : const Text(
                "Meal Removed from favorites...",
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              )));
  }

  @override
  Widget build(BuildContext context) {
    final bool isExisting = widget.favoriteMeals.contains(widget.meal);

    return Scaffold(
      appBar: AppBar(
          title: Text(
            widget.meal.title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          backgroundColor: widget.categoryColor),
      body: SingleChildScrollView(
        child: (Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              widget.meal.imageUrl,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Ingredients- ",
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Theme.of(context).colorScheme.tertiary,
                        fontWeight: FontWeight.bold),
                  ),
                  for (final ingredient in widget.meal.ingredients)
                    Text(ingredient),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Steps- ",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Theme.of(context).colorScheme.tertiary,
                        fontWeight: FontWeight.bold),
                  ),
                  for (final steps in widget.meal.steps) Text("${steps}\n"),
                ],
              ),
            )
          ],
        )),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(150, 0, 0, 0),
        onPressed: () {
          widget.onToggleFavorite(widget.meal);
          favoriteToggleMessage(!isExisting);
          setState(() {});
        },
        child: isExisting
            ? Icon(
                Icons.star,
                color: Colors.red,
              )
            : Icon(
                Icons.star,
                color: Colors.white,
              ),
        tooltip: "Mark as Favorite",
      ),
    );
  }
}
