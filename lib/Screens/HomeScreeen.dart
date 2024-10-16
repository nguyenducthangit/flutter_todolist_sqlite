import 'package:flutter/material.dart';
import 'package:flutter_todolist_sqlite_app/helpers/drawer_navigation.dart';

class Homescreeen extends StatefulWidget {
  const Homescreeen({super.key});

  @override
  State<Homescreeen> createState() => _HomescreeenState();
}

class _HomescreeenState extends State<Homescreeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todolist'),
        backgroundColor: Colors.blue,
      ),
      drawer: DrawerNavigation(),
    );
  }
}
