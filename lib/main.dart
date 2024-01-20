import 'package:flutter/material.dart';
import 'package:news_app_2110020062/pages/splashscreen_view.dart';
import 'package:news_app_2110020062/pages/home_view.dart';
import 'package:news_app_2110020062/pages/profile_view.dart';
import 'package:news_app_2110020062/pages/otomotive_page.dart';
import 'package:news_app_2110020062/pages/sports_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '2110020062',
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreenPage(),
        '/home': (context) => HomePage(),
        '/profile': (context) => ProfilePage(),
        '/otomotive': (context) => OtomotivePage(),
        '/sports': (context) => SportsPage(),
      },
    );
  }
}
