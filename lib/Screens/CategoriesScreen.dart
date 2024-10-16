import 'package:flutter/material.dart';
import 'package:flutter_todolist_sqlite_app/Screens/HomeScreeen.dart';
import 'package:flutter_todolist_sqlite_app/services/CategoryService.dart';

class Categoriesscreen extends StatefulWidget {
  const Categoriesscreen({super.key});

  @override
  State<Categoriesscreen> createState() => _CategoriesscreenState();
}

class _CategoriesscreenState extends State<Categoriesscreen> {
  var _categoryNameController = TextEditingController();
  var _categoryDescriptionController = TextEditingController();
  var _category = Categoryservice();

  var _categoryService = Categoryservice();
  _showFormDialog(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (param) {
          return AlertDialog(
            actions: <Widget>[
              FloatingActionButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Cancel'),
                backgroundColor: Colors.red,
                hoverColor: Colors.red[600],
              ),
              FloatingActionButton(
                onPressed: () {
                  // print('Category:${_categoryNameController.text}');
                  // print('Description:${_categoryDescriptionController.text}');
                  _category.name = _categoryDescriptionController.text;
                  _category.decription = _categoryDescriptionController.text;
                  _categoryService.saveCategory(_category);
                },
                child: Text('Save'),
                backgroundColor: Colors.blue[700],
                hoverColor: Colors.blue[800],
              ),
            ],
            title: Text('Categories form'),
            content: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: _categoryNameController,
                    decoration: InputDecoration(
                      hintText: 'Write a categories',
                      labelText: 'Categories',
                    ),
                  ),
                  TextField(
                    controller: _categoryDescriptionController,
                    decoration: InputDecoration(
                      hintText: 'Write a description',
                      labelText: 'Description',
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: ElevatedButton(
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Homescreeen())),
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 20,
          ),
          // styleButton
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          ),
        ),
        title: Text('Categories'),
      ),
      body: Center(child: Text('WelCome to Categories Screen')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showFormDialog(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
