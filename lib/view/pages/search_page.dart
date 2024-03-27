import 'package:dictionary_app/controller/providers/search_provider.dart';
import 'package:dictionary_app/components/utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool isList = true;
  // dynamic response;
  Future<void> fetchData() async {
    var provider = Provider.of<SearchProvider>(context, listen: false);
    provider.getData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: swhite,
        // bottomNavigationBar: NavBar(),
        body: Consumer<SearchProvider>(builder: (context, provider, child) {
          return Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    MyTextField(
                        label: "Search",
                        hint: "Search keyword",
                        type: TextInputType.text,
                        controller: provider.searchController,
                        onSubmit: (value) {
                          fetchData();
                        }),
                  ],
                ),
              ),
              vspace,
              vspace,
              provider.wordData != null
                  ? Container(
                    padding: EdgeInsets.all(10),
                    height: 120,
                    width: 150,
                    decoration: BoxDecoration(
                      color: black,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Center(
                            child: Text(
                              provider.wordData!.word.capitalize(),
                              style: TextStyle(color: swhite, fontSize: 30, fontFamily: "uncut"),
                            ),
                          ),
                        ),
                      ],
                    ),
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
                    ),
            ],
          );
        }),
      ),
    );
  }
 
}

extension StringExtensions on String { 
  String capitalize() { 
    return "${this[0].toUpperCase()}${this.substring(1)}"; 
  }}
 