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

var q2SelectedArray = [-1, -1, -1];
var q7SelectedArray = [-1, -1, -1];
var q5RandomInt = -1;
var q5RandomIntArray = [-1, -1, -1, -1, -1];
var q6RandomInt = -1;
var q6RandomIntArray = [-1, -1, -1];
var q8RandomIntArray = [-1, -1, -1, -1, -1, -1, -1, -1, -1, -1];
var q8TotalAnswer = 0;

bool isNumeric(String? s){
  if(s == null) return false;
  return double.tryParse(s) != null;
}

void reset(){
  user = UserData();
  q2SelectedArray = [-1, -1, -1];
  q5RandomIntArray = [-1, -1, -1, -1, -1];
  q6RandomIntArray = [-1, -1, -1];
}