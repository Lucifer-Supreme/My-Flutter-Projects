import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ripple_meals_app_4/models/meal.dart';
import 'package:ripple_meals_app_4/screens/meal_item_detail_screen.dart';
import 'package:ripple_meals_app_4/widgets/meal_item_metadata.dart';
import 'package:transparent_image/transparent_image.dart';

class MealItem extends StatelessWidget {
  final Meal meal;

  final Color categoryColor;

  void Function(Meal meal) onToggleFavorite;

  final List<Meal> favoriteMeals;

  String get complexityText {
    return meal.complexity.name[0].toUpperCase() +
        meal.complexity.name.substring(1);
  }

  String get affordableText {
    return meal.affordability.name[0].toUpperCase() +
        meal.affordability.name.substring(1);
  }

  MealItem({super.key, required this.meal, required this.categoryColor,required this.onToggleFavorite,required this.favoriteMeals});

  Widget build(context) {
    return Card(
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      clipBehavior: Clip.hardEdge, //****
      elevation: 15,
      shadowColor: categoryColor,
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => MealItemDetailScreen(
                        meal: meal,
                        categoryColor: categoryColor, onToggleFavorite: onToggleFavorite, favoriteMeals: favoriteMeals,
                      )));
        },
        child: Stack(
          children: [
            FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: NetworkImage(meal.imageUrl),
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity,
            ),
            Positioned(
              right: 0,
              left: 0,
              bottom: 0,
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                      color: Colors.black38,
                      child: Column(
                        children: [
                          Text(
                            meal.title,
                            style: GoogleFonts.lora(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MealItemMetadata(
                                  icon: Icons.timer,
                                  label: "${meal.duration} min"),
                              SizedBox(
                                width: 20,
                              ),
                              MealItemMetadata(
                                  icon: Icons.dinner_dining,
                                  label: complexityText),
                              SizedBox(
                                width: 20,
                              ),
                              MealItemMetadata(
                                  icon: Icons.attach_money_sharp,
                                  label: affordableText)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
