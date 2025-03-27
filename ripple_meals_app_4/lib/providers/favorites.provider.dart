import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:ripple_meals_app_4/models/casestudy.dart';

class FavoritesCaseNotifier extends StateNotifier<List<CaseStudy>> {
  FavoritesCaseNotifier() : super([]) {
    _loadFavorites();
  }

  void toggleCaseFavorite(CaseStudy caseStudy) async {
    final caseIsFavorite = state.contains(caseStudy);

    if (caseIsFavorite) {
      state = state.where((cs) => cs.id != caseStudy.id).toList();
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
    print("Saved favorites: $caseStudyJson");
  }

  Future<void> _loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final List<String>? caseStudyJson = prefs.getStringList('bookmarkedCases');
    if (caseStudyJson != null) {
      state = caseStudyJson
          .map((jsonString) => CaseStudy.fromJson(jsonDecode(jsonString)))
          .toList();
      print("Loaded favorites: ${state.map((cs) => cs.id).toList()}");
    } else {
      print("No saved favorites found.");
    }
  }
}

final favoritesCaseProvider =
StateNotifierProvider<FavoritesCaseNotifier, List<CaseStudy>>((ref) {
  return FavoritesCaseNotifier();
});
