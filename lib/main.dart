import 'package:flutter/material.dart';
import 'package:onboard_animation/onboarding_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
      url: 'https://hhtrqnqafbgzrjznheoy.supabase.co',
      anonKey:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImhodHJxbnFhZmJnenJqem5oZW95Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTI0MjA3ODgsImV4cCI6MjAyNzk5Njc4OH0.-ydFouY7qAex_hecsiWvWau5jadTbTEJ5yqoYChOdyo');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Flutter Way',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OnboardingScreen(),
    );
  }
}
