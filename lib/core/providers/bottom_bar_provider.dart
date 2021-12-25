import 'package:flutter/material.dart';

class BottomBarProvider with ChangeNotifier {
  int _page = 0;
  int get page => _page;

  changePage(int i) {
    _page = i;
    notifyListeners();
  }

  bool _isOpenFilter = false;
  bool get isOpenFilter => _isOpenFilter;

  toggleFilter() {
    _isOpenFilter = !_isOpenFilter;
    notifyListeners();
  }
}
