import 'package:case_master_creator_pp/main.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() {
    return HomepageState();
  }
}

class HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Case Creator"),
        leading: Icon(Icons.lightbulb),
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      label: Text("Case Study Title"),
                      border: OutlineInputBorder()),
                  //validator: ,
                  onSaved: (value) {},
                ),
                SizedBox(
                  height: 20,
                ),
                Stack(children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Theme.of(context).colorScheme.onSurface)),
                  ),
                ]),
                SizedBox(
                  height: 20,
                ),
            
                Row(children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.calendar_month,size: 50,)),
                  Spacer(),
                  DropdownMenu(dropdownMenuEntries: [])
                ],),
            
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Content here..."),
                    contentPadding: EdgeInsets.symmetric(vertical: 100.0),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
