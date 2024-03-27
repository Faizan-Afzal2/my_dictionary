import 'package:dictionary_app/components/utils.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: swhite,
        body: Container(
            child: Column(
          children: [
            // vspace,
            // Container(
            //   padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            //   decoration: BoxDecoration(
            //       color: white,
            //       borderRadius: BorderRadius.only( bottomLeft: Radius.circular(15),  bottomRight: Radius.circular(15))),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       //  InkWell(
            //       //           child: MyImage(
            //       //             asset: "assets/icons/back.png",
            //       //             iconColor: black,
            //       //             // containerColor: white,
            //       //             padding: 15,
            //       //             containerColor: white,
            //       //             radius: 15,
            //       //             width: 25,
            //       //             height: 25,
            //       //           ),
            //       //           onTap: () {
            //       //             Navigator.pop(context);
            //       //           },
            //       //         ),

                 
            //     ],
            //   ),
            // )
          
          ],
        )),
      ),
    );
  }
}
