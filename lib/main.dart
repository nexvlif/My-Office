import 'package:flutter/material.dart';
import 'package:myoffice/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // ROOT sudo rm -rf */
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Office',
      home: HomePage(),
    );
  }
}