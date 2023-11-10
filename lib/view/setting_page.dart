import 'package:dictionary_app/view/utils.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: swhite,
      bottomNavigationBar: NavBar(),
      body: Container(
          child: Column(
        children: [
          vspace,
          Container(
             padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only( bottomLeft: Radius.circular(15),  bottomRight: Radius.circular(15))),
            child: Row(
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
                    // padding: EdgeInsets.symmetric(horizontal:30,vertical: 10),
                    decoration: BoxDecoration(color: white,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Text(
                      "Settings  Page",
                      style: TextStyle(
                        color: black,
                        fontSize: 25,
                        fontFamily: "uncut",
                        fontWeight: FontWeight.w100,
                      ),
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
            ),
          )
        ],
      )),
    );
  }
}
