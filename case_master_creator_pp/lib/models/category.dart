import 'dart:ui';

import 'package:flutter/material.dart';

class caseCategory {
  caseCategory({required this.id,required this.categoryColor,required this.categoryTitle,required this.imageURL});

  final String id;
  final String categoryTitle;
  final Color categoryColor;
  final String imageURL;
}