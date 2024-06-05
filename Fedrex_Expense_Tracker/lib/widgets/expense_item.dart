import 'package:fedrex_expense_tracker/expense_description.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fedrex_expense_tracker/models/expense.dart';

class ExpenseItem extends StatelessWidget {
  final Expense expense;

  const ExpenseItem(this.expense, {super.key});

  void showDetails(Expense expense,BuildContext context){
    showModalBottomSheet(context: context, builder: (ctx)=> ExpenseDescription(expense));
  }

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
              ),
          padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                 onPressed: (){showDetails(expense,context);}, child: Text("${expense.title}",style: const TextStyle(fontWeight: FontWeight.bold)),
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("₹${expense.amount.toStringAsFixed(0)}"),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(categoryIcons[expense.category]),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(expense.formattedDate),

                      //Text(expense.category.toString()),
                    ],
                  ),


                  //Text(expense.expenseID)
                ],
              )
            ],
          )),
    ));
  }
}
