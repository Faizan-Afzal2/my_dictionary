import 'dart:developer';

import 'package:dictionary_app/controller/providers/save_provider.dart';
import 'package:dictionary_app/components/utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SavePage extends StatefulWidget {
  const SavePage({super.key});

  @override
  State<SavePage> createState() => _SavePageState();
}

class _SavePageState extends State<SavePage> {
  @override
  void initState() {
    getData();
  }

  void getData() async {
    debugger();
    var provider = Provider.of<SavedProvider>(context ,listen: false);
    provider.getWords();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: swhite,
        body: Container(
            child: Consumer<SavedProvider>(builder: (context, provider, child) {
          return ListView.builder(
              itemCount: provider.data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(provider.data[index].word),
                  subtitle: Text(provider
                      .data[index].meanings[1].definitions[1].definition),
                );
              });
        })),
      ),
    );
  }
}
