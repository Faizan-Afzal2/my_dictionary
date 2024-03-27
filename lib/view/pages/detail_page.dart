import 'dart:developer';

import 'package:dictionary_app/controller/detail_controller.dart';
import 'package:dictionary_app/controller/home_controller.dart';
import 'package:dictionary_app/controller/providers/detail_provider.dart';
import 'package:dictionary_app/models/word_model.dart';
import 'package:dictionary_app/view/pages/search_page.dart';
import 'package:dictionary_app/view/pages/setting_page.dart';
import 'package:dictionary_app/components/utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatefulWidget {
  WordModel word;
  DetailPage({
    super.key,
    required this.word,
  });

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: white,
                size: 20,
              )),
          backgroundColor: black,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Word detail page",
            style: TextStyle(color: white, fontSize: 18, fontFamily: "uncut"),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SettingPage()));
                },
                icon: MyImage(
                  asset: "assets/icons/settings.png",
                  iconColor: white,
                ))
          ],
        ),
        backgroundColor: swhite,
        body: Column(
          children: [
            Divider(
              color: white,
              // thickness: 0.1,
              height: 0.1,
            ),
            Container(
                color: black,
                height: 200,
                width: double.infinity,
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    vspace,
                    Text(
                      widget.word.word.capitalize(),
                      style: TextStyle(
                          color: white,
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          fontFamily: "uncut"),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.word.meanings[0].partOfSpeech.capitalize(),
                      style: TextStyle(
                          color: white,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          fontFamily: "uncut"),
                    ),
                    vspace,
                    vspace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyIcon(
                          icon: Icons.copy_rounded,
                          iconColor: swhite.withOpacity(0.8),
                          containerColor: white.withOpacity(0.2),
                          radius: 14,
                          hmargin: 10,
                          size: 28,
                          padding: 10,
                        ),
                        Consumer<DetailProvider>(
                          builder: (context,provider,child) {
                            return InkWell(
                              onTap: (){
                                // debugger();
                                provider.toggleIsSaved()?
                                provider.addWord(widget.word):
                                provider.deleteWord(widget.word);
                              },
                              
                              child: MyIcon(
                                icon: Icons.bookmark_border_outlined,
                                iconColor: provider.isSaved? Colors.black:swhite.withOpacity(0.8),
                                containerColor: white.withOpacity(0.2),
                                radius: 14,
                                hmargin: 10,
                                size: 28,
                                padding: 10,
                                
                              ),
                            );
                          }
                        ),
                        MyIcon(
                          icon: Icons.share,
                          iconColor: swhite.withOpacity(0.8),
                          containerColor: white.withOpacity(0.2),
                          radius: 14,
                          hmargin: 10,
                          size: 28,
                          padding: 10,
                        ),
                        MyIcon(
                          icon: Icons.volume_up_outlined,
                          iconColor: swhite.withOpacity(0.8),
                          containerColor: white.withOpacity(0.2),
                          radius: 14,
                          hmargin: 10,
                          size: 28,
                          padding: 10,
                        ),
                      ],
                    ),
                  ],
                )),
            Container(
              margin: EdgeInsets.all(20),
              child: Column(children: [
                ListTile(
                  title: Text(
                    "Meaning",
                    style: TextStyle(color: white),
                  ),
                  tileColor: black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  )),
                ),
                SizedBox(height: 1,),
                ListTile(
                  title: Text(
                  // widget.data.meanings.synonyms[0],
                  "hello",
                    style: TextStyle(color: white),
                  ),
                  tileColor: black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  )),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
