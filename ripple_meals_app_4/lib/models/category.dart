import 'package:flutter/material.dart';

class Category {
  const Category({
    required this.title,
    this.color = Colors.orange,
    required this.id,
    required this.imageURL
  });

  final String id;
  final String title;
  final String imageURL;
  final Color color;

}

