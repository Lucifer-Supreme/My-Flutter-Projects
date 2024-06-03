import 'package:uuid/uuid.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

const uuid = Uuid();
final formater=DateFormat('dd-MMMM-yyyy');
enum Category { food, travel, leisure, work}

const categoryIcons = {
  Category.food: Icons.dinner_dining,
  Category.leisure: Icons.videogame_asset_sharp,
  Category.travel:Icons.flight_takeoff,
  Category.work:Icons.work
};

class Expense {


  Expense(
      {required this.category,
      required this.expenseTitle,
      required this.amount,
      required this.date,
      required this.description})
      : expenseID = uuid.v4();

  final expenseID;
  final String expenseTitle;
  final amount;
  final DateTime date;
  final Category category;
  String description;

  String get formatedDate{
    return formater.format(date);
  }
}
