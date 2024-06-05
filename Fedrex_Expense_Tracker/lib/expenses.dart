//expenses.dart

import 'package:fedrex_expense_tracker/widgets/charts/chart.dart';
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
        title: "Bussiness Trip",
        amount: 10000,
        date: DateTime.now(),
        description: "Bussiness Trip to USA")
  ];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      useSafeArea: true,
        isScrollControlled: true,
        context: context,
        builder: (ctx) => NewExpense(onAddExpense: addExpense));
  }

  void addExpense(Expense expense) {
    setState(() {
      _registeredExpenses.add(expense);
    });
  }

  void removeExpense(Expense expense) {
    final expenseIndex = _registeredExpenses.indexOf(expense);
    setState(() {
      _registeredExpenses.remove(expense);
    });
    //ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      duration: Duration(seconds: 5),
      content: Text("Expense Deleted"),
      action: SnackBarAction(
          label: "Undo",
          onPressed: () {
            setState(() {
              _registeredExpenses.insert(expenseIndex, expense);
            });
          }),
    ));
  }

  @override
  Widget build(context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    bool isPortrait = height > width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Fedrex Budget Assistant",
            style: Theme.of(context).textTheme.titleLarge),
        // backgroundColor: Colors.lightBlueAccent,
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: Icon(Icons.add),
          )
        ],
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Container(
            child: isPortrait
                ? Column(
                    children: [
                      Expanded(child: Chart(expenses: _registeredExpenses)),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _registeredExpenses.isEmpty
                                ? Text("No Expense Till now",
                                    style:
                                        Theme.of(context).textTheme.titleMedium)
                                : Expanded(
                                    child: ExpensesList(
                                        expenses: _registeredExpenses,
                                        removeExpense: removeExpense))
                          ],
                        ),
                      ),
                    ],
                  )
                : Row(
                    children: [
                      Expanded(child: Chart(expenses: _registeredExpenses)),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _registeredExpenses.isEmpty
                                ? Text("No Expense Till now",
                                    style:
                                        Theme.of(context).textTheme.titleMedium)
                                : Expanded(
                                    child: ExpensesList(
                                        expenses: _registeredExpenses,
                                        removeExpense: removeExpense))
                          ],
                        ),
                      )
                    ],
                  )),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _openAddExpenseOverlay,
          child: const Icon(Icons.add),
          tooltip: "Add Expense"),
    );
  }
}
