import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:ripple_meals_app_4/widgets/meal_item.dart';

import '../models/casestudy.dart';

class MealsScreen extends StatefulWidget {
  final String? title;

  final List<CaseStudy> mealsList;

  final Color categoryColor;

  void Function(CaseStudy casestudy) onToggleFavorite;

  final List<CaseStudy> favoriteCase;

  MealsScreen(
      {this.title,
      required this.favoriteCase,
      required this.mealsList,
      required this.categoryColor,
      required this.onToggleFavorite,
      super.key});

  @override
  State<MealsScreen> createState() => _MealsScreenState();
}

class _MealsScreenState extends State<MealsScreen>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this,
        upperBound: 1,
        lowerBound: 0,
        duration: Duration(seconds: 2));
    _animationController.forward();
  }

  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var content;
    if (widget.mealsList.isEmpty) {
      content = const Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [Text("Nothing Here...")],
      ));
    } else {
      content = ListView.builder(
          itemCount: widget.mealsList.length,
          itemBuilder: (ctx, index) => MealItem(
                casestudy: widget.mealsList[index],
                categoryColor: widget.categoryColor,
                onToggleFavorite: widget.onToggleFavorite,
                favoriteMeals: widget.favoriteCase,
              ));
    }

    if (widget.title == null) {
      return content;
    }
    return (AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) => FadeTransition(
          opacity: _animationController,
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: widget.categoryColor,
                title: Text(
                  widget.title!,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              body: content),
        )
    )
    );
  }
}
