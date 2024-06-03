import 'package:flutter/material.dart';
import 'package:fedrex_expense_tracker/models/expense.dart';

class ExpenseItem extends StatelessWidget {
  final Expense expense;

  const ExpenseItem(this.expense, {super.key});

  @override
  Widget build(BuildContext context) {
    return (Card(
      margin: const EdgeInsets.all(10),
      shadowColor: Colors.black,
      elevation: 10,
      child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
              gradient: const LinearGradient(
                  colors: [Colors.yellow, Colors.white],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                expense.expenseTitle,style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(categoryIcons[expense.category]),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(expense.formatedDate),

                      //Text(expense.category.toString()),
                    ],
                  ),
                  const Spacer(),
                  Text("₹${expense.amount.toStringAsFixed(0)}"),
                  //Text(expense.expenseID)
                ],
              )
            ],
          )),
    ));
  }
}
