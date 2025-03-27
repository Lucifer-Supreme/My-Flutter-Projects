import 'package:flutter/material.dart';

enum Complexity {
  simple,
  moderate,
  hard,
}

enum Severity {
  low,
  medium,
  high,
  critical
}

class CaseStudy {
  const CaseStudy({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.keywords,
    required this.caseStudy,
    required this.duration,
    required this.complexity,
    required this.severity,
    required this.isLegalCase,
    required this.isEthicalCase,
    required this.isBusinessCase,
    required this.isScientificCase,
    required this.isCulturalCase,
    required this.isCrisisCase,
    required this.isSocietalImpactCase,
  });

  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> keywords;
  final List<String> caseStudy;
  final double duration;
  final Complexity complexity;
  final Severity severity;

  final bool isLegalCase;
  final bool isEthicalCase;
  final bool isBusinessCase;
  final bool isScientificCase;
  final bool isCulturalCase;
  final bool isCrisisCase;
  final bool isSocietalImpactCase;

  /// **Convert CaseStudy object to JSON**
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'categories': categories,
      'title': title,
      'imageUrl': imageUrl,
      'keywords': keywords,
      'caseStudy': caseStudy,
      'duration': duration,
      'complexity': complexity.index,  // Store index instead of enum value
      'severity': severity.index,
      'isLegalCase': isLegalCase,
      'isEthicalCase': isEthicalCase,
      'isBusinessCase': isBusinessCase,
      'isScientificCase': isScientificCase,
      'isCulturalCase': isCulturalCase,
      'isCrisisCase': isCrisisCase,
      'isSocietalImpactCase': isSocietalImpactCase,
    };
  }

  /// **Convert JSON back to CaseStudy object**
  factory CaseStudy.fromJson(Map<String, dynamic> json) {
    return CaseStudy(
      id: json['id'],
      categories: List<String>.from(json['categories']),
      title: json['title'],
      imageUrl: json['imageUrl'],
      keywords: List<String>.from(json['keywords']),
      caseStudy: List<String>.from(json['caseStudy']),
      duration: json['duration'],
      complexity: Complexity.values[json['complexity']],  // Convert index back to enum
      severity: Severity.values[json['severity']],
      isLegalCase: json['isLegalCase'],
      isEthicalCase: json['isEthicalCase'],
      isBusinessCase: json['isBusinessCase'],
      isScientificCase: json['isScientificCase'],
      isCulturalCase: json['isCulturalCase'],
      isCrisisCase: json['isCrisisCase'],
      isSocietalImpactCase: json['isSocietalImpactCase'],
    );
  }

  // Override equality operator and hashCode based on unique id
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is CaseStudy &&
              runtimeType == other.runtimeType &&
              id == other.id;

  @override
  int get hashCode => id.hashCode;
}
