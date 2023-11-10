import 'dart:math';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:dictionary_app/view/data.dart';

final List<Map<String, dynamic>> wordData = [];
bool isList = true;

TextEditingController searchController =TextEditingController();
class HomeController {
  Future<void> getSearch() async {
      final response = await http.get(
          Uri.parse('https://api.dictionaryapi.dev/api/v2/entries/en/$searchController'));
  }
}
