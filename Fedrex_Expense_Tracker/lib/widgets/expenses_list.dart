import 'package:fedrex_expense_tracker/widgets/expense_item.dart';
import 'package:flutter/widgets.dart';
import 'package:fedrex_expense_tracker/models/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});
  final List<Expense> expenses;
  @override
  Widget build(context) {
    return (ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => ExpenseItem(expenses[index]),
    ));
  }
}
