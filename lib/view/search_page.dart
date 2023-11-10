import 'dart:convert';
import 'package:dictionary_app/view/utils.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController search = TextEditingController();
  final List<Map<String, dynamic>> wordData = [];
  bool isList = true;
  dynamic response;
  Future<void> fetchData() async {
    response = await http.get(Uri.parse(
        'https://api.dictionaryapi.dev/api/v2/entries/en/${search.text}'));

    final responseData = json.decode(response.body);
    if (responseData is List) {
      final data = responseData[0];
      wordData.add({
        'word': search.text,
        "data": data,
        'phonetic': data["phonetic"],
        'meanings': data["meanings"][0]["definitions"][0]["definition"],
        'speech': data["meanings"][0]["partOfSpeech"]
      });
    } else {
      print("warning");
      isList = false;
    }
    // if (data is Map<dynamic,dynamic>) {
    //   wordData.add({
    //     'word': word,
    //     'data': data,
    //     'photenic': data[1]["phonetic"],
    //     'meanings': data[3]["meanings"][1]["definitions"][0]["defination"],
    //     'speech': data[0]["meanings"][0]
    //   });
    // }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: swhite,
        bottomNavigationBar: NavBar(),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // MyImage(
                  //   asset: "assets/icons/MenuOut.png",
                  //   iconColor: black,
                  //   containerColor: white,
                  //   padding: 13,
                  //   radius: 15,
                  //   width: 25,
                  //   height: 25,
                  // ),
                  Text(
                    "Search  Page",
                    style: TextStyle(
                      color: black,
                      fontSize: 25,
                      fontFamily: "uncut",
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  // MyImage(
                  //   asset: "assets/icons/settings.png",
                  //   iconColor: black,
                  //   containerColor: white,
                  //   padding: 13,
                  //   radius: 15,
                  //   width: 25,
                  //   height: 25,
                  // ),
                ],
              ),
            ),
            vspace,
            vspace,
            Container(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  MyTextField(
                      label: "Search",
                      hint: "Search keyword",
                      type: TextInputType.text,
                      controller: search,
                      onSubmit: (value) {
                        fetchData();
                      }),
                ],
              ),
            ),
            vspace,
            vspace,
            response != null
                ? Column(
                  
                  children: [
                    Container(
                    
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        color: black,
                        borderRadius:
                            BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Center(
                        child: Text(wordData[0]["word"],style: TextStyle(
                          color: swhite
                        ),),
                      ),
                    ),
                  ],
                )
                : Center(
                    child: Text(
                      "Search words for results...",
                      style: TextStyle(
                        color: dgrey,
                        fontFamily: "uncut",
                        fontSize: 16,
                      ),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
