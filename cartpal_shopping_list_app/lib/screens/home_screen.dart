import 'dart:convert';
import 'package:cartpal_shopping_list_app/data/categories_map.dart';
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
  var isLoading = true;
  //late Future<List<GroceryItem>> _loadedItems;
  var _error = null;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadItems();
  }

  Future<List<GroceryItem>> _loadItems() async {
    final url = Uri.https("flutter-firebase-testing-c0d66-default-rtdb.firebaseio.com",'shopping-list.json');




      final response = await http.get(url);
      print(response.body);
      if(response.statusCode>=400){
        _error = "Some error occured, Please try again later";
      }

      if (response.body == 'null')//firebase returns a string null when no body is found, this is different for every backend so check the debug console
          {
        isLoading = false;
        setState(() {
        });
        return [];
      }

      final Map<String,dynamic>listData = json.decode(response.body);
      final List<GroceryItem> loadedItems = [];
      for(final item in listData.entries){
        final categoryHere = categories.entries.firstWhere((catItem)=>catItem.value.categoryName==item.value["category"]).value;
        loadedItems.add(GroceryItem(id: item.key, name: item.value['name'], quantity: item.value['quantity'], category: categoryHere));
      }

      setState(() {
        _groceryItems = loadedItems.reversed.toList();
        isLoading = false;
      });
      return loadedItems;




  }

  void switchScreen(BuildContext context) async {
    final newItem = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NewItemScreen(),
      ),
    );

    //_loadItems();
    if(newItem==null){
      return;
    }

    setState(() {
      _groceryItems.add(newItem);
    });
  }

  void removeItem(GroceryItem item) async{
    final index = _groceryItems.indexOf(item);

    setState(() {
      _groceryItems.remove(item);
    });
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Item Removed", style: TextStyle(color: Colors.red)),
    ));
    final url = Uri.https("flutter-firebase-testing-c0d66-default-rtdb.firebaseio.com",'shopping-list/${item.id}.json');

    final response = await http.delete(url);

    if(response.statusCode>=400){
      setState(() {
        _groceryItems.insert(index,item);

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Some Error Occured",style: TextStyle(color: Colors.red),)));
      });
    }

  }

  Widget build(context) {

    var content = Expanded(
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        "No Items in your list",
        style: Theme.of(context).textTheme.bodyMedium,
      )
    ]),
    );;

    if(isLoading){
      content= Expanded(child: Center(child: CircularProgressIndicator(),));
    }

   if (_groceryItems.isNotEmpty) {
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


   if (_error != null){
     content= Expanded(
       child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
         Text(
           _error,
           style: Theme.of(context).textTheme.bodyMedium,
         )
       ]),
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

      ]
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          switchScreen(context);
        },
        child: Icon(Icons.add),
      ),
    ));
  }
}
