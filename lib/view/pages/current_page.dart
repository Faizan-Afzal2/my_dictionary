import 'package:dictionary_app/controller/providers/current_page_provider.dart';
import 'package:dictionary_app/controller/providers/home_provider.dart';
import 'package:dictionary_app/view/pages/home_page.dart';
import 'package:dictionary_app/view/pages/info_page.dart';
import 'package:dictionary_app/view/pages/save_word_page.dart';
import 'package:dictionary_app/view/pages/search_page.dart';
import 'package:dictionary_app/view/pages/setting_page.dart';
import 'package:dictionary_app/components/utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CurrentPage extends StatefulWidget {
  CurrentPage({super.key});

  @override
  State<CurrentPage> createState() => _CurrentPageState();
}

class _CurrentPageState extends State<CurrentPage> {
  List<Widget> screens = [
    HomePage(),
    SearchPage(),
    SavePage(),
    InfoPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: swhite,
        appBar: PreferredSize(preferredSize: Size.fromHeight(100), child: MyCustomAppBar()),
        body: Consumer<CurrentProvider>(
          builder: (context, provider, child) {
            int currentIndex = provider.getcurrentIndex();
            return screens[currentIndex];
          },
        ),
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            Provider.of<CurrentProvider>(context, listen: false)
                .currentIndex(index);
          },
          indicatorColor: white,
          backgroundColor: swhite,
          surfaceTintColor: white,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          selectedIndex: Provider.of<CurrentProvider>(context).getcurrentIndex(),
          destinations: <Widget>[
            NavigationDestination(
              icon: Image.asset(
                "assets/icons/homeOut.png",
                height: 27,
                width: 27,
                fit: BoxFit.cover,
              ),
              label: 'Home',
              
            ),
            NavigationDestination(
              icon: Image.asset(
                "assets/icons/SearchOut.png",
                height: 22,
                width: 22,
                fit: BoxFit.cover,
              ),
              label: 'Search',
            ),
            NavigationDestination(
              icon: Image.asset(
                "assets/icons/BookMarkOut.jpg",
                height: 20,
                width: 20,
                fit: BoxFit.cover,
              ),
              label: 'Saved',
            ),
            NavigationDestination(
              icon: Image.asset(
                "assets/icons/info.png",
                height: 25,
                width: 25,
                fit: BoxFit.cover,
              ),
              label: 'Info',
            ),
          ],
        
        ),
      ),
    );
  }
}

// class _CurrentPageState extends State<CurrentPage> {

// List<Widget> screens=[
//   HomeScreen(),
//   SearchPage(),
//   SavePage(),
//   InfoPage()
// ];

//   @override
//   Widget build(BuildContext context) {
//   var provider = Provider.of<CurrentProvider>(context, listen: false);

//     return Scaffold(
//       body: Consumer<CurrentProvider>(
//         builder: (context, provider, child) {
//           int currentIndex = provider._currentIndex;

//           return screens[currentIndex];
//         },

//       ),
//       bottomNavigationBar: NavigationBar(
//         onDestinationSelected: (int index) {
//           provider.currentIndex(index);
//         },
//         indicatorColor: black,
//         selectedIndex: provider._currentIndex,
//         destinations: const <Widget>[
//           NavigationDestination(
//             selectedIcon: Icon(Icons.home),
//             icon: Icon(Icons.home_outlined),
//             label: 'Home',
//           ),
//           NavigationDestination(
//             icon: Icon(Icons.business),
//             label: 'Business',
//           ),
//           NavigationDestination(
//             selectedIcon: Icon(Icons.school),
//             icon: Icon(Icons.school_outlined),
//             label: 'School',
//           ),
//         ],
//       ),
//     );
//   }
// }

class MyCustomAppBar extends StatelessWidget {
  const MyCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15,right: 15,top: 10),
      color: Colors.transparent,
      child: Row(
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingPage()));
            },
          ),
        ],
      ),
    );
  }
}

 