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
            ? Text("Meal Added to favorites...",
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(color: Colors.green))
            : Text("Meal Removed from favorites...",
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(color: Colors.red))));
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
            Hero(
              tag: widget.meal.id,
              child: ClipRect(
                child: Container(
                  height: 200,
                  width: double.infinity,
                  child: Image.network(
                    widget.meal.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
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
        tooltip: "Mark as Favorite",
        child: AnimatedSwitcher(
          duration: Duration(milliseconds: 500),
          transitionBuilder: (child, animation) => RotationTransition(
            turns: Tween(begin: 0.6, end: 1.0).animate(animation),
            child: child,
          ),
          child: Icon(
            Icons.star,
            color: isExisting ? Colors.red : Colors.white,
            key: ValueKey(isExisting),
          ),
        ),
      ),
    );
  }
}
