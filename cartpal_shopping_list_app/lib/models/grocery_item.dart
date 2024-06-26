
import 'package:cartpal_shopping_list_app/models/category.dart';
import 'package:flutter/material.dart';

enum availableCategories  {dairy,fruit,vegetables,meat,carbs, sweets, spices, convenience, hygiene, other,}

class GroceryItem {
  GroceryItem({
    required this.id,
    required this.name,
    required this.quantity,
    required this.category
  });

  String id;
  String name;
  int quantity;
  Category category;
}