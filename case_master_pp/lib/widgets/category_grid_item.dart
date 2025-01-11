import 'package:case_master_pp/data/dummy_data.dart';
import 'package:case_master_pp/models/category.dart';
import 'package:case_master_pp/screens/case_screen.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';


class CategoryGridItem extends StatelessWidget {
  final caseCategory category;

  CategoryGridItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {

    final filteredCases = allCases
        .where((cases) => cases.category.contains(category.id))
        .toList();

    return (InkWell(
      onTap: (){Navigator.push(
          (context), MaterialPageRoute(builder: (ctx) => CaseScreen(category: category, caseList: filteredCases,),),);},
      child: Container(
        padding: const EdgeInsets.all(0),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          category.categoryColor.withOpacity(0.5),
          category.categoryColor.withOpacity(0.9),
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: Stack(children: [
          FadeInImage(
            placeholder: MemoryImage(kTransparentImage),
            image: AssetImage(category.imageURL),
            fit: BoxFit.cover,
            height: 200,
            width: double.infinity,
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Color.fromARGB(100, 0, 0, 0)),
              padding: EdgeInsets.fromLTRB(0, 3, 0, 3),
              child: Text(
                category.categoryTitle,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Theme.of(context).colorScheme.onSurface),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ]),
      ),
    ));
  }
}
