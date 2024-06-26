
//new_expense.dart

import 'dart:convert';

import 'package:fedrex_expense_tracker/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:fedrex_expense_tracker/models/expense.dart';
import 'package:http/http.dart'as http;

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});


  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

//var _enteredTitle='';
//   void _saveTitleInput(String inpuTitle){
//     _enteredTitle=inpuTitle;
//   }

class _NewExpenseState extends State<NewExpense> {
  var selectedTitle = TextEditingController();
  var selectedAmount = TextEditingController();
  var selectedDescription = TextEditingController();
  final formater = DateFormat('dd-MMMM-yyyy');
  DateTime? selectedDate;
  Category _selectedCategory = Category.leisure;

  void _presentDatePicker() async {
    final now = DateTime.now();
    final firstDay = DateTime(now.year - 1);
    final pickedDate = await showDatePicker(
        context: context, initialDate: now, firstDate: firstDay, lastDate: now);
    formater.format(pickedDate!);

    setState(() {
      selectedDate = pickedDate;
    });
  }

  void submitData() async {
    final enteredAmount = double.tryParse(selectedAmount.text);
    final bool amountInvalid = enteredAmount == null || enteredAmount <= 0;
    if (selectedTitle.text.trim().isEmpty ||
        amountInvalid ||
        selectedDate == null) {
      showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            title: const Text("Invalid Data"),
            content: const Text(
                "Make sure you enter valid data into all the feilds"),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(ctx);
                  },
                  child: const Text("Ok"))
            ],
          ));
      return;
    } else {
      print ("ok");

      final url = Uri.https("flutter-firebase-testing-c0d66-default-rtdb.firebaseio.com",'Expense-List.json');
      final response = await http.post(url,headers: {
        "Content-Type":"application/json"
      },
          body: json.encode({
            'category': _selectedCategory.name,
            'title': selectedTitle.text,
            'amount': enteredAmount,
            'date': selectedDate!.toString(),
            'description': selectedDescription.text
          }));

      print(response.body);
      print(response.statusCode);

      if(!context.mounted){
        return;
      }

      Navigator.pop(context);
    }
  }

  @override
  void dispose() {
    selectedTitle.dispose();
    selectedAmount.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    bool isPortrait = height > width;

    return (isPortrait
      ? SizedBox(
      height: double.infinity,
        child: SingleChildScrollView(
        child: (Padding(
            padding: const EdgeInsets.fromLTRB(20, 70, 20, 20),
            child: Column(
              children: [
                Text(
                  "Add New Expense",
                  style:
                  Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  //onChanged: _saveTitleInput,
                  controller: selectedTitle,
                  readOnly: false,
                  maxLength: 50,
                  decoration: const InputDecoration(label: Text("Expense Name")),
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        readOnly: false,
                        maxLength: 10,
                        keyboardType: TextInputType.number,
                        controller: selectedAmount,
                        decoration: const InputDecoration(
                            prefix: Text('₹'), label: Text("Amount")),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                selectedDate == null
                                    ? 'Select Date'
                                    : formater.format(selectedDate!),style: Theme.of(context).textTheme.titleMedium,
                              ),
                              IconButton(
                                  onPressed: _presentDatePicker,
                                  icon: const Icon(Icons.calendar_month)),
                            ],
                          ),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(maxLength: 100,
                  decoration: InputDecoration(label: Text("Description (Optional)")),
                  controller: selectedDescription,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DropdownButton(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        elevation: 50,

                        value: _selectedCategory,
                        items: Category.values
                            .map(
                              (category) => DropdownMenuItem(
                            value: category,
                            child: Text(
                              category.name.toUpperCase(),
                            ),
                          ),
                        )
                            .toList(),
                        onChanged: (value) {
                          if (value != Null) {
                            setState(() {
                              _selectedCategory = value!;
                            });
                          }
                        }),
                    const Spacer(),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("Cancel")),
                    const SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                        onPressed: submitData, child: const Text("Save")),
                  ],
                )
              ],
            ))),
            ),
      )

    ///////////////////////////////////////////////////////////Landscape Mode

    : SizedBox(
      height: double.infinity,
      child: SingleChildScrollView(
        child: (Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Column(
              children: [
                Text(
                  "Add New Expense",
                  style:
                  Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  height: 20,
                ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    //onChanged: _saveTitleInput,
                    controller: selectedTitle,
                    readOnly: false,
                    maxLength: 50,
                    decoration: const InputDecoration(label: Text("Expense Name")),
                  ),
                ),
                SizedBox(width: 5,),
                    Expanded(
                      child: TextField(
                        readOnly: false,
                        maxLength: 10,
                        keyboardType: TextInputType.number,
                        controller: selectedAmount,
                        decoration: const InputDecoration(
                            prefix: Text('₹'), label: Text("Amount")),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                selectedDate == null
                                    ? 'Select Date'
                                    : formater.format(selectedDate!),style: Theme.of(context).textTheme.titleMedium,
                              ),
                              IconButton(
                                  onPressed: _presentDatePicker,
                                  icon: const Icon(Icons.calendar_month)),
                            ],
                          ),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(maxLength: 100,
                  decoration: InputDecoration(label: Text("Description (Optional)")),
                  controller: selectedDescription,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DropdownButton(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        elevation: 50,

                        value: _selectedCategory,
                        items: Category.values
                            .map(
                              (category) => DropdownMenuItem(
                            value: category,
                            child: Text(
                              category.name.toUpperCase(),
                            ),
                          ),
                        )
                            .toList(),
                        onChanged: (value) {
                          if (value != Null) {
                            setState(() {
                              _selectedCategory = value!;
                            });
                          }
                        }),
                    const Spacer(),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Cancel",style: TextStyle(color: Colors.black),)),
                    const SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                        onPressed: submitData, child: const Text("Save")),
                  ],
                )
              ],
            ))),
      ),
    )
    );
  }
}
