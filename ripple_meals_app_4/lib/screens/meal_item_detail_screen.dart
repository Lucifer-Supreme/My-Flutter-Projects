import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ripple_meals_app_4/data/dummy_data.dart';
import 'package:ripple_meals_app_4/main.dart';
import 'package:ripple_meals_app_4/models/meal.dart';

class MealItemDetailScreen extends StatelessWidget{
  MealItemDetailScreen({super.key,required this.meal, required this.categoryColor});
  Color categoryColor;
  Meal meal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(meal.title,style: Theme.of(context).textTheme.titleLarge,),backgroundColor: categoryColor),
      body: (
      Column(
        children: [
          Image.network(meal.imageUrl)

        ],
      )
      ),
    );
  }
}