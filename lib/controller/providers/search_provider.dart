import 'package:dictionary_app/controller/search_controller.dart';
import 'package:dictionary_app/models/word_model.dart';
import 'package:flutter/material.dart';
import 'dart:developer';

class SearchProvider extends ChangeNotifier {
TextEditingController searchController = TextEditingController();

  WordModel? wordData;
  void getData() async {
    wordData= await SearchPageController.getSearch(searchController.text);
    // debugger();
    notifyListeners();
  }
}
