import 'dart:ui';

class Case {
  Case({required this.id,required this.category,required this.title,required this.content,required this.date,required this.imageURL});

  final String id;
  final String category;
  final String title;
  final String content;
  final String imageURL;
  final DateTime date;
}