import 'package:fedrex_expense_tracker/widgets/expense_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fedrex_expense_tracker/models/expense.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpensesList extends StatelessWidget {
  void Function(Expense expense) removeExpense;

  ExpensesList(
      {super.key, required this.expenses, required this.removeExpense});
  final List<Expense> expenses;

  @override
  Widget build(context) {
    return (ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Dismissible(

        background: Container(color: Theme.of(context).colorScheme.error,),
          key: ValueKey(expenses[index]),
          onDismissed: (direction) {
            removeExpense(expenses[index]);
          },
          child: ExpenseItem(expenses[index])),
    ));
  }
}
