import 'package:flutter/material.dart';
import 'package:jokes_generator/home.dart';
import 'package:jokes_generator/coding_jokes.dart';
import 'package:jokes_generator/dark_jokes.dart';
import 'package:jokes_generator/misc_jokes.dart';
import 'package:jokes_generator/id.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Ubuntu',
      ),
      home: Home(),
      routes: {
        '/coding': (context) => Coding(),
        '/dark': (context) => Dark(),
        '/misc': (context) => Misc(),
        '/id': (context) => ID(),
      },
      title: "Infinite Laughs",
      debugShowCheckedModeBanner: false,
    );
  }
}
