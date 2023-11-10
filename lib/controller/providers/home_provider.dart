import 'package:dictionary_app/controller/home_controller.dart';
import 'package:dictionary_app/models/word_model.dart';
import 'package:flutter/material.dart';

class HomeProvioder extends ChangeNotifier {
  List<WordModel>? wordData;
   Future<List<WordModel>?> getRandom()async  {
    wordData= await ApiManager.fetchDataForRandomWords();
    notifyListeners();
    return wordData;
    
   }
}
