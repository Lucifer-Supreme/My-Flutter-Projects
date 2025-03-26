import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import '../models/category.dart';

class CategoryGridItem extends StatelessWidget {
  final Function()selectedCategory;

  CategoryGridItem({super.key, required this.category,required this.selectedCategory});

  final Category category;

  @override
  Widget build(context) {
    return InkWell(
      onTap: selectedCategory,
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(10),
      child: (Container(
        padding: const EdgeInsets.fromLTRB(0,0,0,0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(colors: [
          category.color.withOpacity(0.5),
          category.color.withOpacity(0.9),
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: Stack(
          children: [
            FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: NetworkImage(category.imageURL),
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity,
            ),
            Positioned(
              right: 0,
              left: 0,
              top: 0,
              child: SizedBox(
                width: double.infinity,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(2, 5, 2, 0),
                  color: Colors.black54,
                  child: Text(
                  category.title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Theme.of(context).colorScheme.onSurface,fontWeight: FontWeight.bold),
                              ),
                ),
              ),
            )],
        ),
      )),
    );
  }
}

