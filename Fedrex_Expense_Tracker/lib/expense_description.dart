import 'package:flutter/material.dart';

import 'models/expense.dart';

class ExpenseDescription extends StatelessWidget {
  final Expense expense;

  const ExpenseDescription(this.expense, {super.key});

  @override
  Widget build(context) {
    return (SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Container(
          padding: EdgeInsets.fromLTRB(30, 50, 30, 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Details",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: 20,),
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                Row(
                  children: [
                    Text(
                      "Expense: ${expense.expenseTitle}",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Spacer(),
                    Text("₹ ${expense.amount}")
                  ],
                ),
                    SizedBox(height: 20,),
                Text(
                  "Description: ${expense.description}",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                    SizedBox(height: 30,),
                Row(
                  children: [
                    Text("Category: "),
                    Icon(categoryIcons[expense.category]),
                    Spacer(),
                    Icon(Icons.calendar_month),
                    Text(expense.formatedDate)
                  ],
                )
              ]),
            ],
          )),
    ));
  }
}
