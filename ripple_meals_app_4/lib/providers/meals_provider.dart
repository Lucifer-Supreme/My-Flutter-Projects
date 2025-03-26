import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ripple_meals_app_4/data/dummy_data.dart';

final mealsProvider = Provider((ref){
  return dummyCases;
});