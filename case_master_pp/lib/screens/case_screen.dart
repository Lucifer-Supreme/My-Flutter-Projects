import 'package:case_master_pp/widgets/case_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/case.dart';
import '../models/category.dart';

class CaseScreen extends StatelessWidget {
  CaseScreen({super.key, required this.category, required this.caseList});

  caseCategory category;
  List<Case> caseList;
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text(category.categoryTitle),
        backgroundColor: category.categoryColor,
      ),
      body: caseList.isEmpty?Center(child: Text("No Case Studies available...")):ListView.builder(
          itemCount: caseList.length,
          itemBuilder: (ctx, index) => CaseItem(cases: caseList[index],
          )),
    )
    );
  }
}
