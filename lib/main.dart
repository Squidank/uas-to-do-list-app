import 'package:flutter/material.dart';
import 'package:uas/startPage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To Do List App',
      debugShowCheckedModeBanner: false,
      home: const startPage(),
    );
  }
}
