import 'package:flutter/material.dart';

class StudentProfile {
  const StudentProfile({
    required this.registrationnumber,
    required this.gender,
    required this.programme,
    required this.school,
    required this.skillsets,
    required this.studentname,
    required this.contactnumber,
    required this.linkedinid,
    required this.githubid,
    required this.technicallanguages,
    required this.passoutyear,
    required this.email,
    required this.password,

    
  });
  final String registrationnumber;
  final String email;
  final String gender;
  final String school;
  final String programme;
  final String skillsets;
  final String studentname;
  final String contactnumber;
  final String linkedinid;
  final String githubid;
  final String technicallanguages;
  final String passoutyear;
  final String password;
}