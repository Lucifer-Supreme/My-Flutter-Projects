import 'package:flutter/material.dart';
import 'package:ripple_meals_app_4/models/casestudy.dart';

import 'package:ripple_meals_app_4/models/category.dart';


// Constants in Dart should be written in lowerCamelcase.
const availableCategories = [
  Category(
    id: 'c1',
    title: 'Business & Startups',
    color: Colors.purple,
      imageURL: "https://b2bblogassets.airtel.in/wp-content/uploads/2022/06/startup-company-scaled.jpg"
  ),
  Category(
    id: 'c2',
    title: 'Technology & Innovation',
    color: Colors.red,
      imageURL: "https://blog.wei.com/hubfs/Blog_Images/key%20factors%20for%20digital%20innovation%20-%20dell%20-%20wei.jpg"
  ),
  Category(
    id: 'c3',
    title: 'Healthcare & Medicine',
    color: Colors.orange,
      imageURL: "https://drplus.com.sg/wp-content/uploads/2023/11/drarticle-primary-health.png"
  ),
  Category(
    id: 'c4',
    title: 'Law & Ethics',
    color: Colors.amber,
      imageURL: "https://www.thestatesman.com/wp-content/uploads/2020/08/LAW.jpg"
  ),
  Category(
    id: 'c5',
    title: 'Environmental & Sustainability',
    color: Colors.blue,
      imageURL: "https://www.efacility.in/wp-content/uploads/2020/12/subslider-GHG01.jpg"
  ),
  Category(
    id: 'c6',
    title: 'Psychology & Human Behavior',
    color: Colors.green,
      imageURL: "https://img-c.udemycdn.com/course/750x422/544860_87b3_2.jpg"
  ),
  Category(
    id: 'c7',
    title: 'Education & Learning',
    color: Colors.lightBlue,
      imageURL: "https://www.eurokidsindia.com/blog/wp-content/uploads/2023/11/innovative-learning-approaches-870x570.jpg"
  ),
  Category(
    id: 'c8',
    title: 'Finance & Economics',
    color: Colors.lightGreen,
      imageURL: "https://globalnaps.org/wp-content/uploads/2017/10/Finance-banking.jpg"
  ),
  Category(
    id: 'c9',
    title: 'Politics & Governance',
    color: Colors.pink,
      imageURL: "https://blog.politics.ox.ac.uk/wp-content/uploads/2023/05/visual-politics-scaled.jpg"
  ),
  Category(
    id: 'c10',
    title: 'History & Culture',
    color: Colors.teal,
    imageURL: "https://www.nct.ac.in/assets/images/history/2.png"
  ),
];

const dummyCases = [
  CaseStudy(
    id: 'cs1',
    categories: [
      'c1',
      'c4',
      'c5',
    ],
    title: 'The Volkswagen Emissions Scandal',
    imageUrl: 'https://www.ft.com/__origami/service/image/v2/images/raw/http%3A%2F%2Fcom.ft.imagepublish.upp-prod-eu.s3.amazonaws.com%2Ff9d30ce0-f5c2-11e5-96db-fc683b5e52db?source=next-article&fit=scale-down&quality=highest&width=700&dpr=1',
    keywords: [
      'Corporate Fraud',
      'Environmental Violation',
      'Consumer Deception',
      'Automotive Industry',
      'Regulatory Compliance',
    ],
    caseStudy: [
      'In 2015, Volkswagen was caught using software to cheat emissions tests, making their diesel vehicles appear more environmentally friendly than they were.',
      'This "defeat device" allowed cars to emit pollutants up to 40 times the legal limit when driven under real conditions.',
      'Volkswagen admitted to installing the software in 11 million vehicles worldwide, leading to lawsuits and regulatory fines.',
      'The scandal resulted in a \$30 billion financial penalty, lawsuits from consumers and governments, and a major decline in brand reputation.',
      'It also sparked stricter environmental regulations and increased global efforts toward electric vehicle production.',
    ],
    duration: 2,
    complexity: Complexity.challenging,
    severity: Severity.moderate,


    isLegalCase: true,
    isEthicalCase: true,
    isBusinessCase: true,
    isSocietalImpactCase: true,
    isScientificCase: false,
    isCulturalCase: false,
    isCrisisCase: true,
  ),

];