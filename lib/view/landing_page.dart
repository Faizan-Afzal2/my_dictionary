import 'package:dictionary_app/view/home_page.dart';
import 'package:dictionary_app/view/utils.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: swhite,
      body: SafeArea(
        child: Center(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 60,),
                Text("Your   Personal Dictionay App",
                style: TextStyle(
                  fontSize: 80,
                  // fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w900,
                  fontFamily: "Bebas",
                  color: black,
                ),
                textAlign: TextAlign.left,),
                vspace,
                vspace,
                  Text("A simple but comprehensive dictionary, including more than 50,000 words with detailed descriptions maenaings and much more",
                style: TextStyle(
                  fontSize: 14
                  ,
                  // fontStyle: FontStyle.italic,
                  fontFamily: "Uncut",
                  fontWeight: FontWeight.w500,
                  color:  black,
                ),
                textAlign: TextAlign.left,),
                Spacer(),
                MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage(),),);
                },
                color: black,
                elevation: 5,
                padding: EdgeInsets.symmetric(horizontal: 100,vertical: 13),
                splashColor: blue,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Text("Get Started",
                style: TextStyle(
                  color: swhite,
                  fontSize: 20,
                  fontWeight: FontWeight.w600
                ),),                
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}