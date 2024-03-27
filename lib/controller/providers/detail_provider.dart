import 'package:dictionary_app/controller/preferences/preference_manager.dart';
import 'package:dictionary_app/controller/search_controller.dart';
import 'package:dictionary_app/models/word_model.dart';
import 'package:flutter/material.dart';
import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';

class DetailProvider extends ChangeNotifier {
  bool isSaved = false;

  bool toggleIsSaved() {
    // debugger();
    print(isSaved.toString());
    isSaved= !isSaved;
    notifyListeners();
    return isSaved;
  }
  
  void addWord(WordModel word) {
    // debugger();
    PreferenceManager.addWord(word);
  }

  void deleteWord(WordModel word) {
    // debugger();
    PreferenceManager.deleteWord(word);
  }
}
