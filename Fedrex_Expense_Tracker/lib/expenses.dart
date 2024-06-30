import 'dart:convert';
import 'package:fedrex_expense_tracker/widgets/charts/chart.dart';
import 'package:fedrex_expense_tracker/widgets/new_expense.dart';
import 'package:flutter/material.dart';
import 'widgets/expenses_list.dart';
import 'models/expense.dart';
import 'package:http/http.dart' as http;

extension CategoryExtension on Category {
  static Category? fromName(String name) {
    for (var value in Category.values) {
      if (value.name == name) {
        return value;
      }
    }
    return null; // Return null if no match is found
  }
}

class Expenses extends StatefulWidget {
  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  late List<Expense> _registeredExpenses = [];
  late double totalFinalExpense = 0;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  void _openAddExpenseOverlay() async {
    await showModalBottomSheet(
      useSafeArea: true,
      isScrollControlled: true,
      context: context,
      builder: (ctx) => NewExpense(),
    );
    loadData();
    setState(() {
    });
  }

  void loadData() async {
    double totalExpense =0;
    final url = Uri.https("flutter-firebase-testing-c0d66-default-rtdb.firebaseio.com",'Expense-List.json');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final Map<String, dynamic>? listData = json.decode(response.body);
      final List<Expense> _loadedItems = [];

      if (listData != null) {
        for (final item in listData.entries) {
          final Map<String, dynamic> expenseData = item.value;
          final String title = expenseData['title'] ?? 'Untitled';
          final double amount = (expenseData['amount'] ?? 0).toDouble();
          final String? dateStr = expenseData['date'];
          final Category? category = CategoryExtension.fromName(expenseData['category'] ?? 'Other');
          final String description = expenseData['description'] ?? '';

          if (dateStr != null && category != null) {
            final DateTime date = DateTime.parse(dateStr);
            _loadedItems.add(
              Expense(
                title: title,
                amount: amount,
                date: date,
                category: category,
                description: description,
              ),
            );
            totalExpense= totalExpense+amount;
          }
        }
        totalFinalExpense = totalExpense;
        print(totalFinalExpense);
      }
      setState(() {
        _registeredExpenses = _loadedItems.reversed.toList();
      });
    } else {
      print('Failed to load data');
    }
  }

  void removeExpense(Expense expense) {
    final expenseIndex = _registeredExpenses.indexOf(expense);
    setState(() {
      _registeredExpenses.remove(expense);
    });
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      duration: Duration(seconds: 5),
      content: Text("Expense Deleted"),
      action: SnackBarAction(
        label: "Undo",
        onPressed: () {
          setState(() {
            _registeredExpenses.insert(expenseIndex, expense);
          });
        },
      ),
    ));
  }

  @override
  Widget build(context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    bool isPortrait = height > width;


    _registeredExpenses.isEmpty?print("empty"):("not empty");

    return Scaffold(
      appBar: AppBar(
        title: Text("Fedrex Budget Assistant", style: Theme.of(context).textTheme.titleLarge),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Container(
          child: isPortrait
              ? Column(
            children: [
              Container(height: (30 / 100) * height, child: Chart(expenses: _registeredExpenses)),
              Text("Total Expenses - ${totalFinalExpense.toString()}",style: TextStyle(fontStyle: FontStyle.italic),),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _registeredExpenses.isEmpty
                        ? Text("No Expense Till now", style: Theme.of(context).textTheme.titleMedium)
                        : Expanded(
                      child: ExpensesList(expenses: _registeredExpenses, removeExpense: removeExpense),
                    ),
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
                  children: [
                    Text("Total Expenses - ${totalFinalExpense.toString()}",style: TextStyle(fontStyle: FontStyle.italic),),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _registeredExpenses.isEmpty
                              ? Text("No Expense Till now", style: Theme.of(context).textTheme.titleMedium)
                              : Expanded(
                            child: ExpensesList(expenses: _registeredExpenses, removeExpense: removeExpense),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _openAddExpenseOverlay,
        child: const Icon(Icons.add),
        tooltip: "Add Expense",
      ),
    );
  }
}
