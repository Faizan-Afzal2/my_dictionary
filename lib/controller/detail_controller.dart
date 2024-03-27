import 'package:dictionary_app/models/word_model.dart';
import 'package:http/http.dart' as http;

bool isList = true;
List<WordModel> data = [];
class DetailPageController {
  static Future<WordModel> getSearch(String word) async {
    final response = await http.get(
      Uri.parse(
          'https://api.dictionaryapi.dev/api/v2/entries/en/$word'),
    );
    data = wordModelFromJson(response.body);
    return data[0];
  }
}
