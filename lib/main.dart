import 'package:flutter/material.dart';
import 'package:flutter_todolist_sqlite_app/Screens/HomeScreeen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreeen(),
    );
  }
}
