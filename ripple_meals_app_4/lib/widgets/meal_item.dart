import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ripple_meals_app_4/models/casestudy.dart';
import 'package:ripple_meals_app_4/screens/meal_item_detail_screen.dart';
import 'package:ripple_meals_app_4/widgets/meal_item_metadata.dart';
import 'package:transparent_image/transparent_image.dart';

class MealItem extends StatefulWidget {
  final CaseStudy casestudy;

  final Color categoryColor;

  void Function(CaseStudy casestudy) onToggleFavorite;

  final List<CaseStudy> favoriteMeals;

  MealItem(
      {super.key,
      required this.casestudy,
      required this.categoryColor,
      required this.onToggleFavorite,
      required this.favoriteMeals});

  @override
  State<MealItem> createState() => _MealItemState();
}

class _MealItemState extends State<MealItem> {
  String get complexityText {
    return widget.casestudy.complexity.name[0].toUpperCase() +
        widget.casestudy.complexity.name.substring(1);
  }

  String get affordableText {
    return widget.casestudy.severity.name[0].toUpperCase() +
        widget.casestudy.severity.name.substring(1);
  }

  void favoriteToggleMessage(bool added) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        duration: const Duration(seconds: 2),
        content: added
            ? Text("Case Bookmarked...",
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(color: Colors.green))
            : Text("Bookmark Removed...",
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(color: Colors.red))));
  }

  Widget build(context) {
    bool isExisting = widget.favoriteMeals.contains(widget.casestudy);

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
                        caseStudy: widget.casestudy,
                        categoryColor: widget.categoryColor,
                        onToggleFavorite: widget.onToggleFavorite,
                        favoriteMeals: widget.favoriteMeals,
                      )));
        },
        child: Hero(
          tag: widget.casestudy.id,
          child: ClipRect(
            child: Container(
              height: 200,
              width: double.infinity,
              child: Stack(
                children: [
                  FadeInImage(
                    placeholder: MemoryImage(kTransparentImage),
                    image: NetworkImage(widget.casestudy.imageUrl),
                    fit: BoxFit.cover,
                    height: 200,
                    width: double.infinity,
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: TextButton(
                      onPressed: () {
                        widget.onToggleFavorite(widget.casestudy);
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
                          width: double.maxFinite,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                            color: Colors.black38,
                            child: Column(
                              children: [
                                Text(
                                  widget.casestudy.title,
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
                                      label: "${widget.casestudy.duration} min",
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
