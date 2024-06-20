import 'package:flutter/material.dart';

import 'package:cartpal_shopping_list_app/models/category.dart';

import '../models/grocery_item.dart';

Map<availableCategories, Category> categories = {
  availableCategories.vegetables: Category(
    'Vegetables',
    Color.fromARGB(255, 0, 255, 128),
  ),
  availableCategories.fruit: Category(
    'Fruit',
    Color.fromARGB(255, 145, 255, 0),
  ),
  availableCategories.meat: Category(
    'Meat',
    Color.fromARGB(255, 255, 102, 0),
  ),
  availableCategories.dairy: Category(
    'Dairy',
    Color.fromARGB(255, 0, 208, 255),
  ),
  availableCategories.carbs: Category(
    'Carbs',
    Color.fromARGB(255, 0, 60, 255),
  ),
  availableCategories.sweets: Category(
    'Sweets',
    Color.fromARGB(255, 255, 149, 0),
  ),
  availableCategories.spices: Category(
    'Spices',
    Color.fromARGB(255, 255, 187, 0),
  ),
  availableCategories.convenience: Category(
    'Convenience',
    Color.fromARGB(255, 191, 0, 255),
  ),
  availableCategories.hygiene: Category(
    'Hygiene',
    Color.fromARGB(255, 149, 0, 255),
  ),
  availableCategories.other: Category(
    'Other',
    Color.fromARGB(255, 0, 225, 255),
  ),
};



