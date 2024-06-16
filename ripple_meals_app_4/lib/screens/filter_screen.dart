import 'package:flutter/material.dart';
import 'package:ripple_meals_app_4/data/dummy_data.dart';
import 'package:ripple_meals_app_4/models/meal.dart';
import 'package:ripple_meals_app_4/screens/meals_screen.dart';

enum Filter {
  gluttenFree,
  lactoseFree,
  vegetarian,
  vegan,
}

class FilterScreen extends StatefulWidget {
  List<Meal> favoriteMeals;

  void Function(Meal meal) onToggleFavorite;

  FilterScreen(
      {super.key, required this.favoriteMeals, required this.onToggleFavorite});

  State<FilterScreen> createState() {
    return FilterScreenState();
  }
}

class FilterScreenState extends State<FilterScreen> {
  bool _gluttenFreeFilterSet = false;
  bool _veganFilterSet = false;
  bool _vegetarianFilterSet = false;
  bool _lactoseFilterSet = false;

  void filtersSet(
      bool glutenFree, bool vegan, bool vegetarian, bool lactoseFree) {
    List<Meal> filteredMeals = dummyMeals;
    if (glutenFree) {
      filteredMeals = filteredMeals.where((meal) => meal.isGlutenFree).toList();
    }
    if (vegan) {
      filteredMeals = filteredMeals.where((meal) => meal.isVegan).toList();
    }
    if (vegetarian) {
      filteredMeals = filteredMeals.where((meal) => meal.isVegetarian).toList();
    }
    if (lactoseFree) {
      filteredMeals =
          filteredMeals.where((meal) => meal.isLactoseFree).toList();
    }
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => MealsScreen(
                favoriteMeals: widget.favoriteMeals,
                mealsList: filteredMeals,
                categoryColor: Colors.orange,
                title: "Filtered Meals",
                onToggleFavorite: widget.onToggleFavorite)));
  }

  Widget build(context) {
    return (Scaffold(
      appBar: AppBar(
        title: const Text("Filters"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SwitchListTile(
              value: _gluttenFreeFilterSet,
              onChanged: (isChecked) {
                setState(() {
                  _gluttenFreeFilterSet = isChecked;
                });
              },
              title: Text(
                "Glutten-Free",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              subtitle: Text(
                "Only Includes Glutten Free Meals",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            ),
            SwitchListTile(
              value: _veganFilterSet,
              onChanged: (isChecked) {
                _veganFilterSet = isChecked;
                setState(() {});
              },
              title: Text(
                "Vegan-Only",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              subtitle: Text(
                "Only Includes Vegan Meals",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            ),
            SwitchListTile(
              value: _vegetarianFilterSet,
              onChanged: (isChecked) {
                _vegetarianFilterSet = isChecked;
                setState(() {});
              },
              title: Text(
                "Vegetarian-Only",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              subtitle: Text(
                "Only Includes Vegetarian Meals",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            ),
            SwitchListTile(
              value: _lactoseFilterSet,
              onChanged: (isChecked) {
                _lactoseFilterSet = isChecked;
                setState(() {});
              },
              title: Text(
                "Lactose-Free",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              subtitle: Text(
                "Only Includes Lactose Free Meals",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      filtersSet(_gluttenFreeFilterSet, _veganFilterSet,
                          _vegetarianFilterSet, _lactoseFilterSet);
                    },
                    child: Text("Apply")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Cancel"))
              ],
            )
          ],
        ),
      ),
    ));
  }
}
