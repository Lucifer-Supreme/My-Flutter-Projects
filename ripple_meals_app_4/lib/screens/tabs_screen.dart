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
  ConsumerState<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends ConsumerState<TabsScreen> {
  int _selectedPageIndex = 0;

  // Remove local _bookmarked list. We'll rely on favoritesCaseProvider.

  // Toggle favorite using provider
  void _toggleCaseFavoriteStatus(CaseStudy caseStudy) {
    // Use the provider notifier to toggle the case favorite status.
    ref.read(favoritesCaseProvider.notifier).toggleCaseFavorite(caseStudy);
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void _setScreen(String identifier) {
    if (identifier == 'filters') {
      // Pass the current favorites from provider
      final favorites = ref.read(favoritesCaseProvider);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => FilterScreen(
            favoriteMeals: favorites, // Adjust parameter naming if needed
            onToggleFavorite: _toggleCaseFavoriteStatus,
          ),
        ),
      );
    } else {
      final favorites = ref.read(favoritesCaseProvider);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MealsScreen(
            favoriteCase: favorites,
            mealsList: dummyCases,
            categoryColor: Colors.orange,
            onToggleFavorite: _toggleCaseFavoriteStatus,
            title: "Case Studies",
          ),
        ),
      );
    }
    setState(() {});
  }

  @override
  Widget build(context) {
    // Listen to the provider state
    final favorites = ref.watch(favoritesCaseProvider);
    final meals = ref.watch(mealsProvider);
    Widget activePage = CategoriesScreen(
      onToggleFavorite: _toggleCaseFavoriteStatus,
      favoriteMeals: favorites, // Use provider state
    );
    var activePageTitle = "Case Category";

    if (_selectedPageIndex == 1) {
      activePage = MealsScreen(
        mealsList: favorites, // Show favorites using provider
        categoryColor: Colors.orange,
        onToggleFavorite: _toggleCaseFavoriteStatus,
        favoriteCase: favorites,
      );
      activePageTitle = "Bookmarked";
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(activePageTitle),
      ),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: "Bookmarked",
          )
        ],
      ),
      drawer: MainDrawer(
        onSelectScreen: _setScreen,
      ),
    );
  }
}
