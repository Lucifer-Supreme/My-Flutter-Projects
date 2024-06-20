import 'package:cartpal_shopping_list_app/data/dummy_data.dart';
import 'package:cartpal_shopping_list_app/widgets/grocery_list_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  Widget build(context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("CartPal Shopping List"),
      ),
      body: Column(
          children: [
            ListTile(
              title: Text("Items"),
              trailing: Text("Quantity"),
            ),
        Expanded(
          child: ListView.builder(
            itemCount: groceryItems.length,
            itemBuilder: (context, index) =>
                GroceryListItem(item: groceryItems[index], index: index),
          ),
        ),
      ]),
    ));
  }
}
