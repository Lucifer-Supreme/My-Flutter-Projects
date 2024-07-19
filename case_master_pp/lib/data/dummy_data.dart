import 'package:case_master_pp/models/category.dart';
import 'package:flutter/material.dart';

import '../models/case.dart';

List<caseCategory> availableCategories=[
  caseCategory(id: "CS1", categoryColor: Colors.blue, categoryTitle: "Cybersecurity", imageURL: "case_master_pp/lib/assets/image/cybersecurity.jpg"),
  caseCategory(id: "BS1", categoryColor: Colors.green, categoryTitle: "Business", imageURL: "https://i.pinimg.com/564x/ef/c5/ba/efc5babd3f1d1d7517d2fb8e4258c000.jpg"),
  caseCategory(id: "TECH1", categoryColor: Colors.orange, categoryTitle: "Technology", imageURL: "https://i.pinimg.com/736x/a3/73/fe/a373fed1c45869de3f29468a2713d0d8.jpg"),
  caseCategory(id: "DM1", categoryColor: Colors.red, categoryTitle: "Disaster", imageURL: "https://i.pinimg.com/564x/0a/2e/a1/0a2ea1f7008f117527dfbda6e671baba.jpg"),
  caseCategory(id: "LAW1", categoryColor: Colors.purple, categoryTitle: "Law", imageURL: "https://i.pinimg.com/736x/eb/e3/62/ebe3622bae2a0e5be9775a37fbc27580.jpg"),
  caseCategory(id: "HC1", categoryColor: Colors.teal, categoryTitle: "Healthcare", imageURL: "https://i.pinimg.com/736x/12/24/cd/1224cdd1d9a921d01eef6a3dd7478a46.jpg"),
  caseCategory(id: "EDU1", categoryColor: Colors.amber, categoryTitle: "Education", imageURL: "https://i.pinimg.com/564x/7f/b9/52/7fb9526510fb744b66ebbe3bc50fc919.jpg"),
  caseCategory(id: "FIN1", categoryColor: Colors.cyan, categoryTitle: "Finance", imageURL: "https://i.pinimg.com/736x/6b/fb/0e/6bfb0ecc876c78382dc7f6bb813aea3a.jpg"),
  caseCategory(id: "ENV1", categoryColor: Colors.brown, categoryTitle: "Environment", imageURL: "https://i.pinimg.com/564x/b2/0e/cb/b20ecbaa19b45d2bf41e4277012689ce.jpg"),
  caseCategory(id: "MKT1", categoryColor: Colors.pink, categoryTitle: "Marketing", imageURL: "https://i.pinimg.com/736x/1d/f0/2e/1df02ed65be79242343b828f1e7c7dbd.jpg"),
  caseCategory(id: "HR1", categoryColor: Colors.lime, categoryTitle: "Human Resources", imageURL: "https://i.pinimg.com/564x/ab/0d/af/ab0dafc18a9d5114434623141eff96ce.jpg"),
  caseCategory(id: "RET1", categoryColor: Colors.indigo, categoryTitle: "Retail", imageURL: "https://i.pinimg.com/564x/ee/9e/11/ee9e116b69c87db0ad6bb956e14e0412.jpg"),
];

List<Case> allCases=[
  Case(id: "CS", category: "CS1", title: "Cybersecurity", content: "Cybersecurity", date: DateTime.now(), imageURL: "https://i.pinimg.com/736x/ac/5d/fd/ac5dfd3004792dc6eba43559fd4e78b9.jpg"),
  Case(id: "CS1", category: "CS1", title: "Cybersecurity2", content: "Cybersecurity2", date: DateTime.now(), imageURL: "https://i.pinimg.com/736x/ac/5d/fd/ac5dfd3004792dc6eba43559fd4e78b9.jpg")
];