import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ripple_meals_app_4/widgets/meal_item.dart';

import '../models/category.dart';
import '../models/meal.dart';

class MealsScreen extends StatelessWidget {
  final String? title;

  final List<Meal> mealsList;

  final Color categoryColor;

  void Function(Meal meal) onToggleFavorite;

  final List<Meal> favoriteMeals;

  MealsScreen({this.title,required this.favoriteMeals, required this.mealsList,required this.categoryColor,required this.onToggleFavorite, super.key});

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
          itemBuilder: (ctx, index) => MealItem(meal: mealsList[index], categoryColor: categoryColor, onToggleFavorite: onToggleFavorite, favoriteMeals: favoriteMeals,));
    }

    if (title==null){
      return content;
    }
    return (Scaffold(
        appBar: AppBar(
          backgroundColor: categoryColor,
          title: Text(title!,style: Theme.of(context).textTheme.titleLarge,),
        ),
        body: content
    )
    );
  }
}
