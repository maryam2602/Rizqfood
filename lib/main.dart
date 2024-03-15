import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:rizqfood/Logo.dart';
import 'package:rizqfood/color.dart';
import 'package:rizqfood/color.dart';
import 'package:rizqfood/welcomescreen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RizQfood',
      theme: ThemeData(
        primarySwatch: Colors.orange,

      ),
      home: const HomeScreen(),
    );
  }
}
