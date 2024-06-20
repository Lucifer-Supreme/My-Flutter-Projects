import 'package:cartpal_shopping_list_app/data/categories_map.dart';
import 'package:cartpal_shopping_list_app/models/category.dart';
import 'package:cartpal_shopping_list_app/models/grocery_item.dart';
import 'package:flutter/material.dart';

Color getCategoryColor(availableCategories category) {
  return categories[category]!.categoryColor; // default to black if category not found
}

String getCategory (availableCategories category) => category.name[0].toUpperCase()+category.name.substring(1);

class GroceryListItem extends StatelessWidget {
  GroceryItem item;

  int index;

  GroceryListItem({super.key, required this.item,required this.index});



  Widget build(context) {
    Color categoryColor = getCategoryColor(item.category);
    print(item.category.toString());
    return Container(
      height: 50,
      child: (ListTile(
        title: Text(item.name),
        leading: Container(height: 20,width: 20,color: categoryColor,),
        trailing: Text(item.quantity.toString()),
        subtitle: Text(getCategory(item.category)),
      )),
    );
  }
}
