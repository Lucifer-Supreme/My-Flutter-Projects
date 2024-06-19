import 'package:flutter/material.dart';
import 'package:ripple_meals_app_4/data/dummy_data.dart';

import 'package:ripple_meals_app_4/screens/meals_screen.dart';
import 'package:ripple_meals_app_4/widgets/category_grid_item.dart';

import '../models/category.dart';
import '../models/meal.dart';

class CategoriesScreen extends StatefulWidget {
  CategoriesScreen(
      {super.key, required this.favoriteMeals, required this.onToggleFavorite});

  void Function(Meal meal) onToggleFavorite;

  final List<Meal> favoriteMeals;

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen>
    with TickerProviderStateMixin {
  late AnimationController _animationController;

  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
      lowerBound: 0,
      upperBound: 1,
    );

    _animationController.forward();
  }

  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

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
            onToggleFavorite: widget.onToggleFavorite,
            favoriteMeals: widget.favoriteMeals,
          ),
        ));
  }

  @override
  Widget build(context) {
    return AnimatedBuilder(
        animation: _animationController,
        child: Scaffold(
          body: GridView(
            padding: const EdgeInsets.all(10),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
        ),
        builder: (context, child) => SlideTransition(
              position: Tween(begin: Offset(0, 0.1), end: Offset(0, 0)).animate(CurvedAnimation(parent: _animationController, curve: Curves.bounceOut)),
              child: child,
            ));
  }
}
