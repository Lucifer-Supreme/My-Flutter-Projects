import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ripple_meals_app_4/widgets/meal_item.dart';

import '../models/category.dart';
import '../models/meal.dart';

class MealsScreen extends StatelessWidget {
  final String title;

  final List<Meal> mealsList;

  final Category category;

  MealsScreen({required this.title, required this.mealsList,required this.category, super.key});

  @override
  Widget build(BuildContext context) {
    var content;
    if (mealsList.isEmpty) {
      content = Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [Text("Nothing Here...")],
      ));
    }
    else{
      content= ListView.builder(
        itemCount: mealsList.length,
          itemBuilder: (ctx, index) => MealItem(meal: mealsList[index], category: category,));
    }

    return (Scaffold(
        appBar: AppBar(
          backgroundColor: category.color,
          title: Text(title,style: Theme.of(context).textTheme.titleLarge,),
        ),
        body: content
    )
    );
  }
}
