import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/category.dart';

class CategoryGridItem extends StatelessWidget {
  final Function()selectedCategory;

  CategoryGridItem({super.key, required this.category,required this.selectedCategory});

  final Category category;

  Widget build(context) {
    return InkWell(
      onTap: selectedCategory,
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(10),
      child: (Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(colors: [
          category.color.withOpacity(0.5),
          category.color.withOpacity(0.9),
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: Text(
          category.title,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Theme.of(context).colorScheme.onSurface),
        ),
      )),
    );
  }
}
