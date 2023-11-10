import 'dart:developer';
import 'dart:math';
import 'package:dictionary_app/models/word_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:dictionary_app/view/data.dart';

final List<String> randomWords = generateRandomWords(10);
final List<Map<String, dynamic>> wordData = [];
bool isList = true;
final List<WordModel> data = [];

class ApiManager {
  static Future<List<WordModel>?> fetchDataForRandomWords() async {
    for (String word in randomWords) {
      debugger();
      final response = await http.get(
          Uri.parse('https://api.dictionaryapi.dev/api/v2/entries/en/$word'));
      debugger();
      final responseData = json.decode(response.body);
      List<WordModel> worddata = wordModelFromJson(json.encode(responseData));
      print(worddata);
      data.add(worddata[0]);
    }
    return data;
  }
}

List<String> generateRandomWords(int count) {
  final random = Random();
  return List.generate(count, (_) => words[random.nextInt(words.length)]);
}
