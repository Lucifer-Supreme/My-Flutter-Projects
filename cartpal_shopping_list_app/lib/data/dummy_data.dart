import 'package:cartpal_shopping_list_app/data/categories_map.dart';
import 'package:cartpal_shopping_list_app/models/category.dart';
import 'package:cartpal_shopping_list_app/models/grocery_item.dart';

List<GroceryItem> groceryItems = [
  GroceryItem(
      id: 'a',
      name: 'Milk',
      quantity: 1,
      category: categories[availableCategories.dairy]!),
  GroceryItem(
      id: 'b',
      name: 'Bananas',
      quantity: 5,
      category:  categories[availableCategories.fruit]!),
  GroceryItem(
      id: 'c',
      name: 'Beef Steak',
      quantity: 1,
      category:  categories[availableCategories.meat]!),
];