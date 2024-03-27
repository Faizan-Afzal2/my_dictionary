import 'package:dictionary_app/controller/home_controller.dart';
import 'package:dictionary_app/models/word_model.dart';
import 'package:flutter/material.dart';
import 'dart:developer';

class HomeProvioder extends ChangeNotifier {
  List<WordModel>? wordData;
  bool isFirst=true;

  void getRandom() async {
    wordData = await ApiManager.fetchDataForRandomWords();
    // debugger();
    notifyListeners();
  }
}
