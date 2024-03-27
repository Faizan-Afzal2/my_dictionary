import 'package:dictionary_app/view/pages/home_page.dart';
import 'package:dictionary_app/view/pages/info_page.dart';
import 'package:dictionary_app/view/pages/save_word_page.dart';
import 'package:dictionary_app/view/pages/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

Color purple = Colors.purple;
Color yellow = Color.fromARGB(255, 223, 193, 45);
Color black = Color.fromARGB(255, 16, 16, 16);
Color white = Color.fromARGB(255, 246, 246, 246);
Color swhite = Color.fromARGB(255, 236, 236, 236);
Color lgrey = Color.fromARGB(255, 236, 236, 236);
Color dgrey = Color.fromARGB(255, 151, 151, 151);
Color blue = Color.fromARGB(255, 6, 175, 241);
Color dblue = Color.fromARGB(255, 2, 146, 202);

// double deviceHeight= MediaQuery
double deviceHeight = 100;
double deviceWidth = 1700;
SizedBox hspace = SizedBox(
  width: 10,
);
SizedBox vspace = SizedBox(
  height: 10,
);

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        decoration: BoxDecoration(
            border:
                Border.symmetric(vertical: BorderSide(width: 1, color: black)),
            color: white,
            gradient: LinearGradient(colors: [purple, yellow])),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.menu,
              size: 30,
              color: white,
              weight: 900,
            ),
            Text(
              "Image Generator",
              style: TextStyle(
                  color: white,
                  fontSize: 28,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500),
            ),
            Icon(
              Icons.settings,
              size: 26,
              color: white,
            ),
          ],
        ));
  }
}

class MyTextField extends StatelessWidget {
  final String label;
  final String hint;
  final TextInputType type;
  final double? height;
  final TextEditingController controller;
  final void Function(String)? onSubmit;

  MyTextField(
      {required this.label,
      required this.hint,
       this.height=60,
      required this.type,
      required this.controller,
      this.onSubmit});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: height,
        child: TextField(
          cursorColor: black,
          controller: controller,
          keyboardType: type,
          style: TextStyle(color: black, fontStyle: FontStyle.italic),
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(  
              borderSide: BorderSide(color: black),
              borderRadius: BorderRadius.circular(20)
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: black,
              ), // Border color when focused
            ),
            label: Text(
              label,
              style: TextStyle(color: dgrey, fontSize: 16),
            ),
            hintText: hint,
            hintStyle: TextStyle(color: dgrey, fontStyle: FontStyle.italic),
            focusColor: lgrey,
          ),
          onSubmitted: onSubmit,
        ),
      ),
    );
  }
}

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        // border: Border.all(width: 1,color: black),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        color: white,
      ),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            child: Image.asset(
              "assets/icons/homeOut.png",
              height: 27,
              width: 27,
              fit: BoxFit.cover,
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          InkWell(
            child: Image.asset(
              "assets/icons/SearchOut.png",
              height: 22,
              width: 22,
              fit: BoxFit.cover,
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SearchPage()));
            },
          ),

          InkWell(
            child: Image.asset(
              "assets/icons/BookMarkOut.jpg",
              height: 20,
              width: 20,
              fit: BoxFit.cover,
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SavePage()));
            },
          ),
          InkWell(
            child: Image.asset(
              "assets/icons/info.png",
              height: 25,
              width: 25,
              fit: BoxFit.cover,
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => InfoPage()));
            },
          ),
          // MyIcon(
          //   icon: Icons.menu,
          //   iconColor: black,
          //   weight: 100,

          // ),
          // MyIcon(
          //   icon: Icons.home,
          //   iconColor: black,
          //   weight: 100,
          // ),
          // MyIcon(
          //   icon: Icons.search_outlined,

          //   iconColor: black,
          //   weight: 100,
          // ),
          // MyIcon(
          //   icon: Icons.bookmark_border_outlined,
          //   iconColor: black,
          //   weight: 100,
          // ),
        ],
      ),
    );
  }
}

class MyIcon extends StatelessWidget {
  IconData? icon;
  Color? iconColor;
  Color? containerColor;
  Color? borderColor;
  double? size;
  double border;
  double hmargin;
  double vmargin;
  double padding;
  double radius;
  double weight;
  bool isborder;
  MyIcon({
    super.key,
    required this.icon,
    this.iconColor = Colors.white,
    this.size = 25,
    this.border = 0,
    this.isborder = false,
    this.containerColor,
    this.vmargin = 5,
    this.hmargin = 5,
    this.padding = 3,
    this.radius = 5,
    this.weight = 10,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: hmargin, vertical: vmargin),
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: containerColor,
      ),
      child: Icon(
        icon,
        color: iconColor,
        size: size,
        weight: weight,
      ),
    );
  }
}

class MyImage extends StatelessWidget {
  String asset;
  Color? iconColor;
  Color? containerColor;
  Color? borderColor;
  double? height;
  double? width;
  double border;
  double hmargin;
  double vmargin;
  double padding;
  double radius;
  bool isborder;
  MyImage({
    required this.asset,
    super.key,
    this.iconColor = Colors.white,
    this.height,
    this.width,
    this.border = 0,
    this.isborder = false,
    this.containerColor,
    this.vmargin = 5,
    this.hmargin = 5,
    this.padding = 3,
    this.radius = 5,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: hmargin, vertical: vmargin),
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: containerColor,
      ),
      child: Image.asset(
        asset,
        color: iconColor,
        height: height,
        width: width,
        fit: BoxFit.cover,
      ),
    );
  }
}
