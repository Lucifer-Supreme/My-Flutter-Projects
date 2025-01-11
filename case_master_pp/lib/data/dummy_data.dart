import 'package:case_master_pp/models/category.dart';
import 'package:flutter/material.dart';

import '../models/case.dart';

List<caseCategory> availableCategories=[
  caseCategory(id: "CS1", categoryColor: Colors.blue, categoryTitle: "Cybersecurity", imageURL: "assets/image/cybersecurity.jpg"),
  caseCategory(id: "BS1", categoryColor: Colors.green, categoryTitle: "Business", imageURL: "assets/image/bussiness.jpeg"),
  caseCategory(id: "TECH1", categoryColor: Colors.orange, categoryTitle: "Technology", imageURL: "assets/image/technology.jpeg"),
  caseCategory(id: "DM1", categoryColor: Colors.red, categoryTitle: "Disaster", imageURL: "assets/image/disaster.jpeg"),
  caseCategory(id: "LAW1", categoryColor: Colors.purple, categoryTitle: "Law", imageURL: "assets/image/law.jpeg"),
  caseCategory(id: "HC1", categoryColor: Colors.teal, categoryTitle: "Healthcare", imageURL: "assets/image/healthcare.jpeg"),
  caseCategory(id: "EDU1", categoryColor: Colors.amber, categoryTitle: "Education", imageURL: "assets/image/Education.jpeg"),
  caseCategory(id: "FIN1", categoryColor: Colors.cyan, categoryTitle: "Finance", imageURL: "assets/image/Finance.jpeg"),
  caseCategory(id: "ENV1", categoryColor: Colors.brown, categoryTitle: "Environment", imageURL: "assets/image/environment.jpeg"),
  caseCategory(id: "MKT1", categoryColor: Colors.pink, categoryTitle: "Marketing", imageURL: "assets/image/marketing.jpeg"),
  caseCategory(id: "HR1", categoryColor: Colors.lime, categoryTitle: "Human Resources", imageURL: "assets/image/human resource.jpeg"),
  caseCategory(id: "RET1", categoryColor: Colors.indigo, categoryTitle: "Retail", imageURL: "assets/image/retail.jpeg"),
];

List<Case> allCases=[
  Case(id: "CS", category: "CS1", title: "Cybersecurity", content: "Cybersecurity", date: DateTime.now(), imageURL: "https://i.pinimg.com/736x/ac/5d/fd/ac5dfd3004792dc6eba43559fd4e78b9.jpg"),
  Case(id: "CS1", category: "CS1", title: "Cybersecurity2", content: "Cybersecurity2", date: DateTime.now(), imageURL: "https://i.pinimg.com/736x/ac/5d/fd/ac5dfd3004792dc6eba43559fd4e78b9.jpg")
];