import 'package:flutter/material.dart';
import 'package:old_test/EduInput.dart';
import 'package:old_test/EnterQPage.dart';
import 'package:old_test/Questions/Q1_01.dart';
import 'package:old_test/Questions/Q1_04.dart';
import 'GenderInput.dart';
import 'HomePage.dart';
import 'AgeInput.dart';
import 'Questions/Q1_02.dart';
import 'Questions/Q1_03.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(title: "簡易心智量表"),
        '/profile/age': (context) => const AgeInputPage(),
        '/profile/gender': (context) => const GenderInputPage(),
        '/profile/edu': (context) => const EduInputPage(),
        '/profile/enterQ': (context) => const EnterQPage(),
        '/question/1-1': (context) => const Question1Sub1Page(),
        '/question/1-2': (context) => const Question1Sub2Page(),
        '/question/1-3': (context) => const Question1Sub3Page(),
        '/question/1-4': (context) => const Question1Sub4Page(),
      },
    );
  }
}


