import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ripple_meals_app_4/models/casestudy.dart';
import 'package:ripple_meals_app_4/screens/meal_item_detail_screen.dart';
import 'package:ripple_meals_app_4/widgets/meal_item_metadata.dart';
import 'package:transparent_image/transparent_image.dart';

import '../providers/favorites.provider.dart';

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
            PageRouteBuilder(
              transitionDuration: const Duration(milliseconds: 400), // Adjust speed
              pageBuilder: (context, animation, secondaryAnimation) => MealItemDetailScreen(
                caseStudy: widget.casestudy,
                categoryColor: widget.categoryColor,
                onToggleFavorite: widget.onToggleFavorite,
                favoriteMeals: widget.favoriteMeals,
              ),
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                const begin = Offset(1.0, 0.0); // Start from the right
                const end = Offset.zero; // End at normal position
                const curve = Curves.easeInOut; // Smooth animation

                var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                var offsetAnimation = animation.drive(tween);

                return SlideTransition(position: offsetAnimation, child: child);
              },
            ),
          );
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
                    child: Consumer(
                      builder: (context, ref, child) {
                        final favorites = ref.watch(favoritesCaseProvider);
                        final isExisting = favorites.any((cs) => cs.id == widget.casestudy.id);
                        return TextButton(
                          onPressed: () {
                            widget.onToggleFavorite(widget.casestudy);
                            // Pass the new status (after toggle) to the message
                            // Since the provider state won't update until after this callback finishes,
                            // you might want to invert isExisting.
                            favoriteToggleMessage(!isExisting);
                          },
                          child: AnimatedSwitcher(
                            duration: const Duration(milliseconds: 500),
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
                        );
                      },
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
                                      icon: Icons.calendar_month,
                                      label: "${widget.casestudy.duration} years",
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    MealItemMetadata(
                                      icon: Icons.psychology,
                                      label: complexityText,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    MealItemMetadata(
                                      icon: Icons.warning,
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
