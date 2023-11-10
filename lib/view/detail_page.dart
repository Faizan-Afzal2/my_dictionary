import 'package:dictionary_app/models/word_model.dart';
import 'package:dictionary_app/view/utils.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  String word;
  WordModel data;
  DetailPage({
    super.key,
    required this.word,
    required this.data,
  });

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: swhite,
          bottomNavigationBar: NavBar(),
          // appBar: AppBar(
          //   backgroundColor: black,
          //   title: Text("Word Detail"),
          // ),
          body: Column(
            children: [
              //  Container(
              //       padding: EdgeInsets.all(12),
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.all(Radius.circular(10)),

              //         color: black
              //       ),
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           InkWell(
              //             child: MyImage(
              //               asset: "assets/icons/back.png",
              //               iconColor: swhite,
              //               // containerColor: white,
              //               padding: 0,
              //               radius: 15,
              //               width: 25,
              //               height: 25,
              //             ),
              //             onTap: (){
              //               Navigator.pop(context);
              //             },
              //           ),

              //           Text("Word Detail",style:
              //           TextStyle(
              //             fontFamily: "slab",
              //             fontSize: 20,
              //             color: swhite,
              //             fontWeight: FontWeight.w500
              //           ),),
              //           MyImage(
              //             asset: "assets/icons/BookMarkOut.jpg",
              //             iconColor: swhite,
              //             padding: 0,
              //             radius: 15,
              //             width: 22,
              //             height: 22,
              //           ),
              //         ],
              //       ),
              //     ),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    vspace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: MyImage(
                            asset: "assets/icons/back.png",
                            iconColor: black,
                            // containerColor: white,
                            padding: 15,
                            containerColor: white,
                            radius: 15,
                            width: 25,
                            height: 25,
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical:15, horizontal: 20),
                          decoration: BoxDecoration(
                              color: white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Text(
                            "Word Detail",
                            style: TextStyle(
                                fontFamily: "uncut",
                                fontSize: 25,
                                color: black,
                                fontWeight: FontWeight.w100),
                          ),
                        ),
                        MyImage(
                          asset: "assets/icons/BookMarkOut.jpg",
                          iconColor: black,
                          padding: 15,
                          containerColor: white,
                          radius: 15,
                          width: 22,
                          height: 22,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
