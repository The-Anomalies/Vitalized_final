import 'package:flutter/material.dart';

class Research {
  const Research({
    required this.researchid,
    required this.empid,
    required this.title,
    required this.domain,
    required this.requirements,
    required this.referencepapers,
  });
  final String researchid;
  final String empid;
  final String title;
  final String domain;
  final String requirements;
  final String referencepapers;
}
