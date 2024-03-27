// ignore_for_file: curly_braces_in_flow_control_structures

import 'dart:convert';
import 'dart:developer';
import 'package:dictionary_app/models/word_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenceManager {
  static String key = "words";

  static getWords() async {
    var pref = await SharedPreferences.getInstance();
    var data = pref.getString(key);
    // debugger();
    if (data != null) {
      return data;
    } else {
      return [];
    }
  }

  static addWord(WordModel word) async {
    var pref = await SharedPreferences.getInstance();
    List data = await getWords();
    data.add(word.toJson());
    // print(data[1].toString());
    print(data.length);
    print(data[20].toString());
    pref.setString(key, jsonEncode(data));
  }

  static deleteWord(WordModel word) async {
    var pref = await SharedPreferences.getInstance();
    List data = await getWords();
    // for (WordModel w in data) {
    //   if (w.word == word.word) {
    //     data.remove(w);
    //     break;
    //   } else
    //     continue;
    // }
    data.remove(word.toJson());
    print(data.length);
    pref.setString(key, jsonEncode(data));
  }
}
