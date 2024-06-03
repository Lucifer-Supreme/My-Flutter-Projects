//expenses.dart

import 'package:fedrex_expense_tracker/widgets/new_expense.dart';
import 'package:flutter/material.dart';
import 'widgets/expenses_list.dart';
import 'models/expense.dart';
import 'package:google_fonts/google_fonts.dart';

class Expenses extends StatefulWidget {
  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      category: Category.work,
      expenseTitle: 'Flutter Course',
      amount: 500,
      date: DateTime.now(),
    ),
    Expense(
      category: Category.leisure,
      expenseTitle: 'Cinema',
      amount: 1500,
      date: DateTime.now(),
    ),
  ];

  void _openAddExpenseOverlay(){
    showModalBottomSheet(context: context, builder: (ctx)=>NewExpense(onAddExpense: addExpense));
  }

  void addExpense(Expense expense){
    setState(() {
      _registeredExpenses.add(expense);
    });
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fedrex Budget Assistant",style: GoogleFonts.lora(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.lightBlueAccent,
        actions: [IconButton(onPressed: _openAddExpenseOverlay, icon: Icon(Icons.add),)],
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Chart'),
              Expanded(child: ExpensesList(expenses: _registeredExpenses))
            ],
          ),
        ),
      ),
    );
  }
}
