import 'dart:convert';
import 'dart:ffi';

import 'package:cartpal_shopping_list_app/models/grocery_item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../data/categories_map.dart';

class NewItemScreen extends StatefulWidget {
  NewItemScreen({super.key});
  State<NewItemScreen> createState() {
    return _NewItemScreenState();
  }
}

class _NewItemScreenState extends State<NewItemScreen> {
  final _finalKey = GlobalKey<FormState>();
  var _enteredName = "";
  var _enteredQuantity=1;
  var _selectedCategory = categories[availableCategories.other];

  void _saveItem() async {
    if(_finalKey.currentState!.validate()){
      _finalKey.currentState!.save();
      final url = Uri.https("flutter-firebase-testing-c0d66-default-rtdb.firebaseio.com",'shopping-list.json');
      final response = await http.post(url,headers: {
        "Content-Type":"application/json"
      },
      body: json.encode({
        'name':_enteredName,
        'quantity':_enteredQuantity,
        'category':_selectedCategory?.categoryName,
      }));

      print(response.body);
      print(response.statusCode);

      if(!context.mounted){
        return;
      }

      Navigator.pop(context);

    }

  }

  Widget build(context) {
    final screenWith = MediaQuery.of(context).size.width;
    return (Scaffold(
      appBar: AppBar(
        title: Text("Add a new item"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _finalKey,
          child: Column(
            children: [
              TextFormField(
                maxLength: 50,
                decoration: InputDecoration(
                  label: Text("Item name"),
                  border: OutlineInputBorder(),
                ),
                autocorrect: true,
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      value.trim().length <= 1)
                    return "Invalid Item Name...";
                  else {
                    return null;
                  }
                },
                onSaved: (value){
                  _enteredName = value!;
                },
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(
                    width: (screenWith / 100) * 35,
                    child: Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                            label: Text("Quantity"),
                            border: OutlineInputBorder()),
                        initialValue: '1',
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              int.tryParse(value) == null ||
                              int.tryParse(value)! < 1)
                            return "Invalid Quantity...";
                          else {
                            return null;
                          }
                        },
                        onSaved: (value){
                          _enteredQuantity = int.parse(value!);
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: DropdownButtonFormField(
                      value: _selectedCategory,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            label: Text("Select Category")),
                        items: [
                          for (final category in categories.entries)
                            DropdownMenuItem(
                              value: category.value,
                              child: Row(
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    color: category.value.categoryColor,
                                  ),
                                  Text(" ${category.value.categoryName}")
                                ],
                              ),
                            )
                        ],
                        onChanged: (value) {
                        _selectedCategory = value;
                        }),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: () {
                    _finalKey.currentState!.reset();
                  }, child: Text("Reset")),
                  ElevatedButton(onPressed: _saveItem, child: Text("Submit"))
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
