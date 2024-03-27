import 'package:flutter/material.dart';

class CurrentProvider extends ChangeNotifier {
  int _currentIndex = 0;
  TextEditingController searchcontroller = TextEditingController();

  int getcurrentIndex() => _currentIndex;
  void currentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

}
