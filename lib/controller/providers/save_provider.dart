import 'dart:convert';
import 'dart:developer';

import 'package:dictionary_app/controller/preferences/preference_manager.dart';
import 'package:dictionary_app/models/word_model.dart';
import 'package:flutter/material.dart';

class SavedProvider extends ChangeNotifier {
  List list = [];
  List<WordModel> data = [];
  void getWords() async {
    list = await PreferenceManager.getWords();
    for (var word in list) {
      data.add(WordModel.fromJson(word));
    }
    notifyListeners();
  }
}
