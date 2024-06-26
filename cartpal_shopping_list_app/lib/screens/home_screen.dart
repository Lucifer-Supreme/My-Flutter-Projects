import 'dart:convert';
import 'dart:ffi';

import 'package:cartpal_shopping_list_app/data/categories_map.dart';
import 'package:cartpal_shopping_list_app/models/category.dart';
import 'package:cartpal_shopping_list_app/models/grocery_item.dart';
import 'package:cartpal_shopping_list_app/screens/new_item_screen.dart';
import 'package:cartpal_shopping_list_app/widgets/grocery_list_item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<GroceryItem> _groceryItems = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadItems();
  }

  void _loadItems() async {
    final url = Uri.https("flutter-firebase-testing-c0d66-default-rtdb.firebaseio.com",'shopping-list.json');

    final response = await http.get(url);
    print(response.body);

    final Map<String,dynamic>listData = json.decode(response.body);
    final List<GroceryItem> _loadedItems = [];
    for(final item in listData.entries){
      final categoryHere = categories.entries.firstWhere((catItem)=>catItem.value.categoryName==item.value["category"]).value;
      _loadedItems.add(GroceryItem(id: item.key, name: item.value['name'], quantity: item.value['quantity'], category: categoryHere));
    }

    setState(() {
      _groceryItems = _loadedItems;
    });

  }

  void switchScreen(BuildContext context) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NewItemScreen(),
      ),
    );

    _loadItems();

    setState(() {
    });
  }

  void removeItem(GroceryItem) {
    _groceryItems.remove(GroceryItem);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Item Removed", style: TextStyle(color: Colors.red)),
    ));
    setState(() {
    });
  }

  Widget build(context) {
    final content;

    if (_groceryItems.isEmpty) {
      content = Expanded(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Your Grocery List is Empty!",
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ]),
      );
    } else {
      content = Expanded(
        child: ListView.builder(
          itemCount: _groceryItems.length,
          itemBuilder: (context, index) => GroceryListItem(
            item: _groceryItems[index],
            index: index,
            removeItem: removeItem,
          ),
        ),
      );
    }

    return (Scaffold(
      appBar: AppBar(
        title: Text("CartPal Shopping List"),
      ),
      body: Column(children: [
        ListTile(
          title: Text("Items"),
          trailing: Text("Quantity"),
        ),
        content
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          switchScreen(context);
        },
        child: Icon(Icons.add),
      ),
    ));
  }
}
