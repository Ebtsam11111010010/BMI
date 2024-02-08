import 'package:flutter/material.dart';
import 'modules/bmi/HomeScreen.dart';

void main() {
  runApp(const MyApp()); // it makes the app works
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // responsible for building the design
    return const MaterialApp(
      home:  HomeScreen(),
      title: 'Flutter app',
      debugShowCheckedModeBanner: false,
    ); // it carries all the widgets
  }
}