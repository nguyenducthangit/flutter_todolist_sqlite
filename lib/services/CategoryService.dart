import 'package:flutter_todolist_sqlite_app/services/Category.dart';

class Categoryservice {
  set decription(String decription) {}

  set name(String name) {}
  static get sections => null;
  saveCategory(Category category) {
    print(category.name);
    print(category.description);
  }
}
