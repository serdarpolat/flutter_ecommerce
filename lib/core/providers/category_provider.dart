import 'package:flutter/material.dart';

class CategoryProvider with ChangeNotifier {
  int _category = 0;
  int get category => _category;

  changeCategory(int i) {
    _category = i;
    notifyListeners();
  }
}
