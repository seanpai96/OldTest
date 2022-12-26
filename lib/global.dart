import 'package:flutter/material.dart';
import 'package:old_test/UserData.dart';

final titleAppBar = AppBar(
  // Here we take the value from the MyHomePage object that was created by
  // the App.build method, and use it to set our appbar title.
  title: const Text("簡易心智量表"),
  titleTextStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
);

const bigTextStyle = TextStyle(fontSize: 60, fontWeight: FontWeight.bold);

const keypadTextStyle = TextStyle(fontSize: 60, fontWeight: FontWeight.bold);

var user = UserData();

bool isNumeric(String? s){
  if(s == null) return false;
  return double.tryParse(s) != null;
}
