import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ripple_meals_app_4/models/casestudy.dart';
import 'package:url_launcher/url_launcher.dart';

import '../providers/favorites.provider.dart';
import '../widgets/meal_item_metadata.dart';

class MealItemDetailScreen extends StatefulWidget {
  MealItemDetailScreen(
      {super.key,
      required this.favoriteMeals,
      required this.caseStudy,
      required this.categoryColor,
      required this.onToggleFavorite});

  Color categoryColor;
  CaseStudy caseStudy;
  int counter = 0;
  final void Function(CaseStudy) onToggleFavorite;
  final List<CaseStudy> favoriteMeals;



  State<MealItemDetailScreen> createState() {
    return StateMealItemDetails();
  }
}

class StateMealItemDetails extends State<MealItemDetailScreen> {

  Future<void> _launchUrl() async {
    final uri = Uri.parse('https://chatgpt.com');
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $uri';
    }
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

  @override
  Widget build(BuildContext context) {
    final bool isExisting = widget.favoriteMeals.contains(widget.caseStudy);

    return Scaffold(
      appBar: AppBar(
          title: Text(
            widget.caseStudy.title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          backgroundColor: widget.categoryColor),
      body: SingleChildScrollView(
        child: (Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: widget.caseStudy.id,
              child: ClipRect(
                child: Container(
                  height: 200,
                  width: double.infinity,
                  child: Image.network(
                    widget.caseStudy.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      MealItemMetadata(
                        icon: Icons.calendar_month,
                        label: "Duration - ${widget.caseStudy.duration} Year",
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      MealItemMetadata(
                        icon: Icons.psychology,
                        label:
                            "Complexity - ${widget.caseStudy.complexity.name}",
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      MealItemMetadata(
                        icon: Icons.warning,
                        label: "Severity - ${widget.caseStudy.severity.name}",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Keywords- ",
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Theme.of(context).colorScheme.tertiary,
                        fontWeight: FontWeight.bold),
                  ),
                  for (final ingredient in widget.caseStudy.keywords)
                    Text(ingredient),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Case Details- ",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Theme.of(context).colorScheme.tertiary,
                        fontWeight: FontWeight.bold),
                  ),
                  for (final steps in widget.caseStudy.caseStudy)
                    Text("${steps}\n"),

                  const SizedBox(height: 5,),

                  Row(
                    children: [
                      const Icon(Icons.question_answer),
                      const SizedBox(
                        width: 10,
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                          text: 'Ask ChatGPT',
                          style: const TextStyle(
                              color: Colors.blue, fontStyle: FontStyle.italic),
                          recognizer: TapGestureRecognizer()..onTap = _launchUrl,
                        )
                      ]
                          )
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            )
          ],
        )),
      ),
      floatingActionButton: Consumer(
        builder: (context, ref, child) {
          // Watch the provider directly
          final favorites = ref.watch(favoritesCaseProvider);
          final isExisting =
              favorites.any((cs) => cs.id == widget.caseStudy.id);

          return FloatingActionButton(
            backgroundColor: const Color.fromARGB(150, 0, 0, 0),
            onPressed: () {
              // Use the provider to toggle the favorite status
              ref
                  .read(favoritesCaseProvider.notifier)
                  .toggleCaseFavorite(widget.caseStudy);
              // Invert the current state for the message, since the change happens asynchronously
              favoriteToggleMessage(!isExisting);
            },
            tooltip: "Mark as Favorite",
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              transitionBuilder: (child, animation) => RotationTransition(
                turns: Tween(begin: 0.6, end: 1.0).animate(animation),
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
    );
  }
}
