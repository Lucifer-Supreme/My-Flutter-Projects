import 'package:flutter/material.dart';
import 'package:ripple_meals_app_4/data/dummy_data.dart';
import 'package:ripple_meals_app_4/models/casestudy.dart';
import 'package:ripple_meals_app_4/screens/meals_screen.dart';

enum Filter {
  gluttenFree,
  lactoseFree,
  vegetarian,
  vegan,
}

class FilterScreen extends StatefulWidget {
  List<CaseStudy> favoriteMeals;

  void Function(CaseStudy casestudy) onToggleFavorite;

  FilterScreen(
      {super.key, required this.favoriteMeals, required this.onToggleFavorite});

  State<FilterScreen> createState() {
    return FilterScreenState();
  }
}

class FilterScreenState extends State<FilterScreen> {
  bool _legalCaseFilterSet = false;
  bool _ethicalCaseFilterSet = false;
  bool _businessCaseFilterSet = false;
  bool _societalImpactCaseFilterSet = false;
  bool _scientificCaseFilterSet = false;
  bool _culturalCaseFilterSet = false;
  bool _crisisCaseFilterSet = false;

  void filtersSet(
      bool legalCase,
      bool ethicalCase,
      bool businessCase,
      bool societalImpactCase,
      bool scientificCase,
      bool culturalCase,
      bool crisisCase) {
    List<CaseStudy> filteredMeals = dummyCases;
    if (businessCase) {
      filteredMeals = filteredMeals.where((casestudy) => casestudy.isBusinessCase).toList();
    }
    if (ethicalCase) {
      filteredMeals = filteredMeals.where((casestudy) => casestudy.isEthicalCase).toList();
    }
    if (legalCase) {
      filteredMeals = filteredMeals.where((casestudy) => casestudy.isLegalCase).toList();
    }
    if (scientificCase) {
      filteredMeals =
          filteredMeals.where((casestudy) => casestudy.isScientificCase).toList();
    }
    if (societalImpactCase) {
      filteredMeals = filteredMeals.where((casestudy) => casestudy.isSocietalImpactCase).toList();
    }
    if (crisisCase) {
      filteredMeals =
          filteredMeals.where((casestudy) => casestudy.isCrisisCase).toList();
    }
    if (culturalCase) {
      filteredMeals =
          filteredMeals.where((casestudy) => casestudy.isCulturalCase).toList();
    }
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => MealsScreen(
                favoriteMeals: widget.favoriteMeals,
                mealsList: filteredMeals,
                categoryColor: Colors.orange,
                title: "Filtered Meals",
                onToggleFavorite: widget.onToggleFavorite)));
  }

  Widget build(context) {
    return (Scaffold(
      appBar: AppBar(
        title: const Text("Filters"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SwitchListTile(
              value: _legalCaseFilterSet,
              onChanged: (isChecked) {
                setState(() {
                  _legalCaseFilterSet = isChecked;
                });
              },
              title: Text(
                "Legal Case",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              subtitle: Text(
                "Laws, regulations, or legal disputes.",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            ),
            SwitchListTile(
              value: _ethicalCaseFilterSet,
              onChanged: (isChecked) {
                _ethicalCaseFilterSet = isChecked;
                setState(() {});
              },
              title: Text(
                "Ethical Case",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              subtitle: Text(
                "Moral, philosophical, or social dilemmas.",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            ),
            SwitchListTile(
              value: _businessCaseFilterSet,
              onChanged: (isChecked) {
                _businessCaseFilterSet = isChecked;
                setState(() {});
              },
              title: Text(
                "Business Case",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              subtitle: Text(
                "Corporate, financial, or strategic issues.",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            ),
            SwitchListTile(
              value: _societalImpactCaseFilterSet,
              onChanged: (isChecked) {
                _societalImpactCaseFilterSet = isChecked;
                setState(() {});
              },
              title: Text(
                "Social Impact Case",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              subtitle: Text(
                "Large-scale effects on society, environment, or health.",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            ),
            SwitchListTile(
              value: _scientificCaseFilterSet,
              onChanged: (isChecked) {
                _scientificCaseFilterSet = isChecked;
                setState(() {});
              },
              title: Text(
                "Scientific Case",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              subtitle: Text(
                "Scientific discoveries, medical ethics, or research.",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            ),
            SwitchListTile(
              value: _culturalCaseFilterSet,
              onChanged: (isChecked) {
                _culturalCaseFilterSet = isChecked;
                setState(() {});
              },
              title: Text(
                "Cultural Case",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              subtitle: Text(
                "Arts, media, traditions, or global movements.",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            ),
            SwitchListTile(
              value: _crisisCaseFilterSet,
              onChanged: (isChecked) {
                _crisisCaseFilterSet = isChecked;
                setState(() {});
              },
              title: Text(
                "Crisis Case",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              subtitle: Text(
                "Major disasters, scandals, or emergencies.",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      filtersSet(_legalCaseFilterSet, _ethicalCaseFilterSet,
                          _businessCaseFilterSet, _societalImpactCaseFilterSet,
                          _scientificCaseFilterSet, _culturalCaseFilterSet,
                          _crisisCaseFilterSet);
                    },
                    child: Text("Apply")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Cancel"))
              ],
            )
          ],
        ),
      ),
    ));
  }
}
