import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ripple_meals_app_4/data/dummy_data.dart';
import 'package:ripple_meals_app_4/main.dart';
import 'package:ripple_meals_app_4/models/meal.dart';

class MealItemDetailScreen extends StatelessWidget {
  MealItemDetailScreen(
      {super.key, required this.meal, required this.categoryColor,required this.onToggleFavorite});
  Color categoryColor;
  Meal meal;
  int counter = 0;
  final void Function(Meal) onToggleFavorite;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            meal.title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          backgroundColor: categoryColor),
      body: SingleChildScrollView(
        child: (Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              meal.imageUrl,
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
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Theme.of(context).colorScheme.tertiary,fontWeight: FontWeight.bold),
                  ),
                  for (final ingredient in meal.ingredients) Text(ingredient),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Steps- ",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Theme.of(context).colorScheme.tertiary,fontWeight: FontWeight.bold),
                  ),
                  for (final steps in meal.steps) Text("${steps}\n"),
                ],
              ),
            )
          ],
        )),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () { onToggleFavorite(meal); },
      child: Icon(Icons.star),),
    );
  }
}
