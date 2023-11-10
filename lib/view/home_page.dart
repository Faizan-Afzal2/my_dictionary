import 'dart:developer';

import 'package:dictionary_app/controller/providers/home_provider.dart';
import 'package:dictionary_app/models/word_model.dart';
import 'package:dictionary_app/view/detail_page.dart';
import 'package:dictionary_app/view/setting_page.dart';
import 'package:dictionary_app/view/utils.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    fetchDataForRandomWords();
    super.initState();
  }

  Future<void> fetchDataForRandomWords() async {
    debugger();
    var provider = Provider.of<HomeProvioder>(context, listen: false);
    provider.getRandom();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: swhite,
        bottomNavigationBar: NavBar(),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                vspace,
                Row(
                  children: [
                    MyImage(
                      asset: "assets/icons/MenuOut.png",
                      iconColor: white,
                      containerColor: black,
                      padding: 13,
                      radius: 15,
                      width: 25,
                      height: 25,
                    ),
                    Spacer(),
                    InkWell(
                      child: MyImage(
                        asset: "assets/icons/settings.png",
                        iconColor: white,
                        containerColor: black,
                        padding: 13,
                        radius: 15,
                        width: 25,
                        height: 25,
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SettingPage()));
                      },
                    ),
                  ],
                ),
                vspace,
                vspace,
                Container(
                  height: 150,
                  padding: EdgeInsets.all(18),
                  decoration: BoxDecoration(
                      color: black,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Hello Faizan!",
                            style: TextStyle(
                                color: white,
                                fontFamily: "slab",
                                fontSize: 30,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      vspace,
                      Text(
                        "Hope you have a fine day, imrove your voacbbullary with us",
                        style: TextStyle(color: swhite, fontFamily: "slab"),
                      ),
                      vspace,
                      vspace,
                    ],
                  ),
                ),
                vspace,
                vspace,
                Text(
                  "Improve Vocabullary",
                  style: TextStyle(
                      color: black,
                      fontFamily: "slab",
                      fontSize: 23,
                      fontWeight: FontWeight.w600),
                ),
                vspace,
                Text(
                  "You have new words",
                  style: TextStyle(
                      color: dgrey,
                      fontFamily: "slab",
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                vspace,
                vspace,
                // SingleChildScrollView(
                //   child: Container(
                //     decoration: BoxDecoration(
                //         color: white,
                //         borderRadius: BorderRadius.all(Radius.circular(15))),
                //     padding: EdgeInsets.all(8),
                //     child: ListView.builder(
                //       itemCount: wordData.length,
                //       itemBuilder: (context, index) {
                //         final word = wordData[index]["word"];
                //         final meanings = wordData[index]["meanings"];
                //         return ListTile(
                //           style: ListTileStyle.list,
                //           tileColor: black,
                //           title: Text(
                //             word,
                //             style: TextStyle(
                //               color: white,
                //             ),
                //           ),
                //           subtitle: Text(
                //             meanings,
                //             style: TextStyle(color: lgrey),
                //           ),
                //         );
                //       },
                //     ),
                //     //  child: Column(
                //     //   children: [

                Builder(
                  builder: (context) {
                    var provider = context.watch<HomeProvioder>();
                    return  provider.wordData==null?Center(
                      child: Container(
                        child: Text("No data "),
                      ),
                    ):
                    Column(
                      children: [
                        for (var word in provider.wordData!)
                          InkWell(
                            child: Container(
                              child: Container(
                                margin: EdgeInsets.symmetric(vertical: 5),
                                padding: EdgeInsets.all(18),
                                decoration: BoxDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage(
                                      "assets/images/backGround.png",
                                    ),
                                    fit: BoxFit.cover,
                                    // opacity: 0
                                  ),
                                  color: black,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          word.word,
                                          style: TextStyle(
                                            color: white,
                                            fontFamily: "slab",
                                            fontSize: 22,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        // SizedBox(
                                        //   width: 50, // Adjust the width as needed
                                        // ),
                                        // Container(
                                        //   width: 150,
                                        //   child: word["phonetic"]!=null?Text(
                                        //     word["phonetic"],
                                        //     style: TextStyle(
                                        //       color: white,
                                        //       fontFamily: "uncut",
                                        //       fontSize: 16,
                                        //       fontWeight: FontWeight.w400,
                                        //     ),
                                        //   ): Text(
                                        //     "No Phonetic",
                                        //     style: TextStyle(
                                        //       color: white,
                                        //       fontFamily: "uncut",
                                        //       fontSize: 16,
                                        //       fontWeight: FontWeight.w400,
                                        //     ),
                                        //   )
                                        // ),
                                      ],
                                    ),
                                    vspace,
                                    Text(
                                      word.meanings[1].definitions[0].definition,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: TextStyle(
                                        color: lgrey,
                                        fontFamily: "uncut",
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      DetailPage(word: word.word, data: word),
                                ),
                              );
                            },
                          ),
                      ],
                    );
                  }
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
