import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/home_screen.dart';
import 'package:getx/languages.dart';
import 'package:getx/screen_one.dart';
import 'package:getx/screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //calling languages
      translations: Languages(),
      locale: Locale("en", "US"),
      fallbackLocale: Locale("en", "US"),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.deepOrange[400]),
        appBarTheme: AppBarTheme(
            foregroundColor: Colors.white,
            centerTitle: true,
            color: Colors.deepOrange[400],
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 26)),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      getPages: [
        GetPage(name: "/", page: () => HomeScreen()),
        GetPage(name: "/screenOne", page: () => ScreenOne()),
        GetPage(name: "/screenTwo", page: () => ScreenTwo())
      ],
    );
  }
}
