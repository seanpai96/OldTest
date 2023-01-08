import 'package:flutter/material.dart';
import 'package:old_test/EduInput.dart';
import 'package:old_test/EnterQPage.dart';
import 'package:old_test/Questions/Q1_01.dart';
import 'package:old_test/Questions/Q1_05.dart';
import 'package:old_test/Questions/Q3_01.dart';
import 'package:old_test/Questions/Q6_01.dart';
import 'package:old_test/Questions/Q6_intro.dart';
import 'package:old_test/Questions/Q8_01.dart';
import 'package:old_test/Questions/Q8_intro.dart';
import 'package:old_test/Questions/Q9_01.dart';
import 'package:old_test/SettingPage.dart';
import 'GenderInput.dart';
import 'HomePage.dart';
import 'AgeInput.dart';
import 'Questions/Q1_02.dart';
import 'Questions/Q1_03.dart';
import 'Questions/Q1_04.dart';
import 'Questions/Q2_image.dart';
import 'Questions/Q2_intro.dart';
import 'Questions/Q2_record.dart';
import 'Questions/Q4_01.dart';
import 'Questions/Q5_01.dart';
import 'Questions/Q5_intro.dart';
import 'Questions/Q7_01.dart';
import 'Questions/Q7_intro.dart';
import 'Questions/Q9_intro.dart';
import 'ScorePage.dart';

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
        '/': (context) => const MyHomePage(),
        '/setting': (context) => const SettingPage(),
        '/profile/age': (context) => const AgeInputPage(),
        '/profile/gender': (context) => const GenderInputPage(),
        '/profile/edu': (context) => const EduInputPage(),
        '/profile/enterQ': (context) => const EnterQPage(),
        '/score': (context) => const ScorePage(),
        '/question/1-1': (context) => const Question1Sub1Page(),
        '/question/1-2': (context) => const Question1Sub2Page(),
        '/question/1-3': (context) => const Question1Sub3Page(),
        '/question/1-4': (context) => const Question1Sub4Page(),
        '/question/1-5': (context) => const Question1Sub5Page(),
        '/question/2-image': (context) => const Question2ImagePage(),
        '/question/2-intro': (context) => const Question2IntroPage(),
        '/question/2-record': (context) => const Question2RecordPage(),
        '/question/3-1': (context) => const Question3Page(),
        '/question/4-1': (context) => const Question4Page(),
        '/question/5-1': (context) => const Question5Page(),
        '/question/5-intro': (context) => const Question5IntroPage(),
        '/question/6-1': (context) => const Question6Page(),
        '/question/6-intro': (context) => const Question6IntroPage(),
        '/question/7-1': (context) => const Question7Page(),
        '/question/7-intro': (context) => const Question7IntroPage(),
        '/question/8-1': (context) => const Question8Page(),
        '/question/8-intro': (context) => const Question8IntroPage(),
        '/question/9-1': (context) => const Question9Page(),
        '/question/9-intro': (context) => const Question9IntroPage(),
      },
    );
  }
}


