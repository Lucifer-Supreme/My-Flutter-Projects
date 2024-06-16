import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {

  MainDrawer({super.key,required this.onSelectScreen});

  final void Function(String indentifier) onSelectScreen;

  @override
  Widget build(BuildContext context) {
    return (Drawer(
      backgroundColor: Theme.of(context).canvasColor,
      shadowColor: Colors.black,
      elevation: 30,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: DrawerHeader(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Theme.of(context).colorScheme.onError,
                  Theme.of(context).canvasColor
                ])),
                child: Row(
                  children: [
                    Icon(
                      Icons.fastfood,
                      size: 48,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                    SizedBox(width: 20),
                    Text(
                      "Cooking Up...",
                      style: Theme.of(context).textTheme.titleMedium,
                    )
                  ],
                )),
          ),
          ListTile(
            leading: Icon(Icons.dinner_dining),
            title: Text(
              "Meals",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),

            ),
            onTap: (){
              onSelectScreen('meals');
            },
          ),
          ListTile(
            leading: Icon(Icons.tune),
            title: Text(
              "Filters",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),

            ),
            onTap: (){
              onSelectScreen('filters');
            },
          ),
        ],
      ),
    ));
  }
}
