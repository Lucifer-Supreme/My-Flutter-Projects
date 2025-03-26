//tabs screen

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ripple_meals_app_4/providers/favorites.provider.dart';
import 'package:ripple_meals_app_4/data/dummy_data.dart';
import 'package:ripple_meals_app_4/providers/meals_provider.dart';
import 'package:ripple_meals_app_4/screens/categories_screen.dart';
import 'package:ripple_meals_app_4/screens/filter_screen.dart';
import 'package:ripple_meals_app_4/screens/meals_screen.dart';
import 'package:ripple_meals_app_4/widgets/main_drawer.dart';

import '../models/casestudy.dart';

class TabsScreen extends ConsumerStatefulWidget {
  const TabsScreen({super.key});

  @override
  ConsumerState<TabsScreen> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends ConsumerState<TabsScreen> {
  int _selectedPageIndex = 0;
  final List<CaseStudy> _bookmarked = [];

  void _toggleMealFavoriteStatus(CaseStudy casestudy) {
    final bool isExisting = _bookmarked.contains(casestudy);

    if (isExisting) {
      _bookmarked.remove(casestudy);
    } else {
      _bookmarked.add(casestudy);
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
          context, MaterialPageRoute(builder: (context) => FilterScreen(favoriteMeals: _bookmarked, onToggleFavorite: _toggleMealFavoriteStatus)));
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MealsScreen(
                    favoriteMeals: _bookmarked,
                    mealsList: dummyCases,
                    categoryColor: Colors.orange,
                    onToggleFavorite: _toggleMealFavoriteStatus,
                    title: "Cases Studies",
                  )));
    }
    setState(() {});
  }

  @override
  Widget build(context) {
    final meals =ref.watch(mealsProvider);
    Widget activePage = CategoriesScreen(
      onToggleFavorite: _toggleMealFavoriteStatus,
      favoriteMeals: _bookmarked,
    );
    var activePageTitle = "Case Category";

    if (_selectedPageIndex == 1) {
      final favoriteMeals = ref.watch(favoriteMealsProvider);
      activePage = MealsScreen(
        mealsList: _bookmarked,
        categoryColor: Colors.orange,
        onToggleFavorite: _toggleMealFavoriteStatus,
        favoriteMeals: _bookmarked,
      );
      activePageTitle = "Bookmarked";
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
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "Bookmarked")
        ],
      ),
      drawer: MainDrawer(
        onSelectScreen: _setScreen,
      ),
    ));
  }
}
