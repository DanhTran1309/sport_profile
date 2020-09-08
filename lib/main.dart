import 'package:flutter/material.dart';
import 'package:sport_app/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sport App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Color(0xff0A315C),
      ),
      home: HomeScreen(),
    );
  }
}
