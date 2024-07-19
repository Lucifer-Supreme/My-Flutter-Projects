import 'package:case_master_pp/data/dummy_data.dart';
import 'package:case_master_pp/main.dart';
import 'package:case_master_pp/widgets/category_grid_item.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Categories"),leading: Icon(Icons.category),),
      body: GridView(
        padding: const EdgeInsets.fromLTRB(8,20,8,20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 3/2
        ),
        children: [
          for(final category in availableCategories)
            CategoryGridItem(category: category,)
        ],
      )
    );
  }

}