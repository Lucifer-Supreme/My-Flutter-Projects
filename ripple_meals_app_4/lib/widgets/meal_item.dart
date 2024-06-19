import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ripple_meals_app_4/models/meal.dart';
import 'package:ripple_meals_app_4/screens/meal_item_detail_screen.dart';
import 'package:ripple_meals_app_4/widgets/meal_item_metadata.dart';
import 'package:transparent_image/transparent_image.dart';

class MealItem extends StatefulWidget {
  final Meal meal;

  final Color categoryColor;

  void Function(Meal meal) onToggleFavorite;

  final List<Meal> favoriteMeals;

  MealItem(
      {super.key,
      required this.meal,
      required this.categoryColor,
      required this.onToggleFavorite,
      required this.favoriteMeals});

  @override
  State<MealItem> createState() => _MealItemState();
}

class _MealItemState extends State<MealItem> {
  String get complexityText {
    return widget.meal.complexity.name[0].toUpperCase() +
        widget.meal.complexity.name.substring(1);
  }

  String get affordableText {
    return widget.meal.affordability.name[0].toUpperCase() +
        widget.meal.affordability.name.substring(1);
  }

  void favoriteToggleMessage(bool added) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        duration: const Duration(seconds: 2),
        content: added
            ? Text("Meal Added to favorites...",
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(color: Colors.green))
            : Text("Meal Removed from favorites...",
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(color: Colors.red))));
  }

  Widget build(context) {
    bool isExisting = widget.favoriteMeals.contains(widget.meal);

    return Card(
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      clipBehavior: Clip.hardEdge, //****
      elevation: 15,
      shadowColor: widget.categoryColor,
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => MealItemDetailScreen(
                        meal: widget.meal,
                        categoryColor: widget.categoryColor,
                        onToggleFavorite: widget.onToggleFavorite,
                        favoriteMeals: widget.favoriteMeals,
                      )));
        },
        child: Hero(
          tag: widget.meal.id,
          child: ClipRect(
            child: Container(
              height: 200,
              width: double.infinity,
              child: Stack(
                children: [
                  FadeInImage(
                    placeholder: MemoryImage(kTransparentImage),
                    image: NetworkImage(widget.meal.imageUrl),
                    fit: BoxFit.cover,
                    height: 200,
                    width: double.infinity,
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: TextButton(
                      onPressed: () {
                        widget.onToggleFavorite(widget.meal);
                        favoriteToggleMessage(!isExisting);
                        setState(() {});
                      },
                      child: AnimatedSwitcher(
                        duration: Duration(milliseconds: 500),
                        transitionBuilder: (child, animation) => RotationTransition(
                          turns: Tween<double>(begin: 0.7, end: 0).animate(animation),
                          child: child,
                        ),
                        child: Icon(
                          Icons.star,
                          color: isExisting ? Colors.red : Colors.white,
                          key: ValueKey(isExisting),
                        ),
                      ),
                    ),
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
                                  widget.meal.title,
                                  style: GoogleFonts.lora(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
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
                                      label: "${widget.meal.duration} min",
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    MealItemMetadata(
                                      icon: Icons.dinner_dining,
                                      label: complexityText,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    MealItemMetadata(
                                      icon: Icons.attach_money_sharp,
                                      label: affordableText,
                                    ),
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
          ),
        ),
      ),
    );
  }
}
