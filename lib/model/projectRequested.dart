import 'package:flutter/material.dart';

class Projectrequested {
  const Projectrequested({

    required this.pid,
    required this.title,
    required this.specifications,
    required this.registrationnumber,
    required this.status,
    
    
  });
  final String pid;
  final String title;
  final String specifications;
  final String registrationnumber;
  final String status;
}