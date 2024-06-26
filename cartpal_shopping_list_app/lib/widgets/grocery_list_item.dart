import 'package:cartpal_shopping_list_app/data/categories_map.dart';
import 'package:cartpal_shopping_list_app/models/category.dart';
import 'package:cartpal_shopping_list_app/models/grocery_item.dart';
import 'package:flutter/material.dart';

import '../data/dummy_data.dart';

class GroceryListItem extends StatelessWidget {
  GroceryItem item;

  int index;

  void Function(GroceryItem) removeItem;

  GroceryListItem({super.key, required this.item,required this.index, required this.removeItem});



  Widget build(context) {

    print(item.category.toString());
    return Container(
      height: 50,
      child: Dismissible(
        background: Container(color: Theme.of(context).colorScheme.onError,),
        onDismissed: (direction){removeItem(item);},
        key: ValueKey(item),
        child: (ListTile(
          title: Text(item.name),
          leading: Container(height: 20,width: 20,color: item.category.categoryColor,),
          trailing: Text(item.quantity.toString()),
          subtitle: Text(item.category.categoryName),
        )),
      ),
    );
  }
}
