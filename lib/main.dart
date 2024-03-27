import 'package:dictionary_app/controller/providers/current_page_provider.dart';
import 'package:dictionary_app/controller/providers/detail_provider.dart';
import 'package:dictionary_app/controller/providers/home_provider.dart';
import 'package:dictionary_app/controller/providers/save_provider.dart';
import 'package:dictionary_app/controller/providers/search_provider.dart';
import 'package:dictionary_app/view/pages/current_page.dart';
import 'package:dictionary_app/view/pages/home_page.dart';
import 'package:dictionary_app/view/pages/landing_page.dart';
import 'package:dictionary_app/components/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: swhite, // Change this to the desired color
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeProvioder()),
        ChangeNotifierProvider(create: (context) => CurrentProvider()),
        ChangeNotifierProvider(create: (context) => SearchProvider()),
        ChangeNotifierProvider(create: (context) => DetailProvider()),
        ChangeNotifierProvider(create: (context) => SavedProvider()),
      ],
      child:
          MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen()),
    );
  }
}
