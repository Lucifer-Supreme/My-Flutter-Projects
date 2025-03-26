import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:ripple_meals_app_4/models/casestudy.dart';

class FavoritesMealsNotifier extends StateNotifier<List<CaseStudy>> {
  FavoritesMealsNotifier() : super([]) {
    _loadFavorites();
  }

  void toggleMealFavorite(CaseStudy caseStudy) async {
    final mealIsFavorite = state.contains(caseStudy);

    if (mealIsFavorite) {
      state = state.where((m) => m.id != caseStudy.id).toList();
    } else {
      state = [...state, caseStudy];
    }

    _saveFavorites();
  }

  Future<void> _saveFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final List<String> caseStudyJson =
    state.map((caseStudy) => jsonEncode(caseStudy.toJson())).toList();
    await prefs.setStringList('bookmarkedCases', caseStudyJson);
  }

  Future<void> _loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final List<String>? caseStudyJson = prefs.getStringList('bookmarkedCases');

    if (caseStudyJson != null) {
      state = caseStudyJson
          .map((jsonString) => CaseStudy.fromJson(jsonDecode(jsonString)))
          .toList();
    }
  }
}

final favoriteMealsProvider =
StateNotifierProvider<FavoritesMealsNotifier, List<CaseStudy>>((ref) {
  return FavoritesMealsNotifier();
});
