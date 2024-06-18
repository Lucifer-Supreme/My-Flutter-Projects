import 'package:flutter/material.dart';
import 'package:ripple_meals_app_4/data/dummy_data.dart';

import 'package:ripple_meals_app_4/screens/meals_screen.dart';
import 'package:ripple_meals_app_4/widgets/category_grid_item.dart';

import '../models/category.dart';
import '../models/meal.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesScreen(
      {super.key, required this.favoriteMeals, required this.onToggleFavorite});

  void Function(Meal meal) onToggleFavorite;

  final List<Meal> favoriteMeals;

  void _selectcategory(BuildContext context, Category category) {
    final filteredMeals = dummyMeals
        .where((meal) => meal.categories.contains(category.id))
        .toList();
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MealsScreen(
            title: category.title,
            mealsList: filteredMeals,
            categoryColor: category.color,
            onToggleFavorite: onToggleFavorite,
            favoriteMeals: favoriteMeals,
          ),
        ));
  }

  @override
  Widget build(context) {
    return (Scaffold(
      body: GridView(
        padding: const EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: [
          for (final category in availableCategories)
            CategoryGridItem(
              category: category,
              selectedCategory: () {
                _selectcategory(context, category);
              },
            )
        ],
      ),
    ));
  }
}