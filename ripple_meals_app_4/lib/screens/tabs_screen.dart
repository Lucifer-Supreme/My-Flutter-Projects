//tabs screen

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ripple_meals_app_4/data/dummy_data.dart';
import 'package:ripple_meals_app_4/screens/categories_screen.dart';
import 'package:ripple_meals_app_4/screens/filter_screen.dart';
import 'package:ripple_meals_app_4/screens/meals_screen.dart';
import 'package:ripple_meals_app_4/widgets/main_drawer.dart';

import '../models/meal.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;
  final List<Meal> _favoriteMeals = [];

  void _toggleMealFavoriteStatus(Meal meal) {
    final bool isExisting = _favoriteMeals.contains(meal);

    if (isExisting) {
      _favoriteMeals.remove(meal);
    } else {
      _favoriteMeals.add(meal);
    }
    setState(() {});
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void _setScreen(String identifier) {
    if (identifier == 'filters') {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => FilterScreen(favoriteMeals: _favoriteMeals, onToggleFavorite: _toggleMealFavoriteStatus)));
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MealsScreen(
                    favoriteMeals: _favoriteMeals,
                    mealsList: dummyMeals,
                    categoryColor: Colors.orange,
                    onToggleFavorite: _toggleMealFavoriteStatus,
                    title: "All Meals",
                  )));
    }
    setState(() {});
  }

  Widget build(context) {
    Widget activePage = CategoriesScreen(
      onToggleFavorite: _toggleMealFavoriteStatus,
      favoriteMeals: _favoriteMeals,
    );
    var activePageTitle = "Pick Category";

    if (_selectedPageIndex == 1) {
      activePage = MealsScreen(
        mealsList: _favoriteMeals,
        categoryColor: Colors.orange,
        onToggleFavorite: _toggleMealFavoriteStatus,
        favoriteMeals: _favoriteMeals,
      );
      activePageTitle = "Favorites";
    }
    return (Scaffold(
      appBar: AppBar(
        title: Text(activePageTitle),
      ),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: "Categories"),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "Favorites")
        ],
      ),
      drawer: MainDrawer(
        onSelectScreen: _setScreen,
      ),
    ));
  }
}
