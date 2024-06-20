
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
  availableCategories category;
}