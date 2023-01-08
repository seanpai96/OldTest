import 'package:flutter/material.dart';

class Q2ImageData{
  String path = "";
  String audioPath = "";
  String name = "";
  late Widget image;

  // Constructor
  Q2ImageData(this.path, this.audioPath, this.name){
    image = Image.asset(path);
  }
}

//create a list of Q2ImageData
List<Q2ImageData> q2ImageDataList = [
  Q2ImageData("assets/Images/Items/apple.png", "Voice/items/apple.mp3", "蘋果"),
  Q2ImageData("assets/Images/Items/banana.png", "Voice/items/banana.mp3", "香蕉"),
  Q2ImageData("assets/Images/Items/calculator.png", "Voice/items/calculator.mp3", "計算機"),
  Q2ImageData("assets/Images/Items/car.png", "Voice/items/car.mp3", "汽車"),
  Q2ImageData("assets/Images/Items/chair.png", "Voice/items/chair.mp3", "椅"),
  Q2ImageData("assets/Images/Items/eraser.png", "Voice/items/eraser.mp3", "橡皮擦"),
  Q2ImageData("assets/Images/Items/fan.png", "Voice/items/fan.mp3", "風扇"),
  Q2ImageData("assets/Images/Items/hairdryer.png", "Voice/items/hairdryer.mp3", "吹風機"),
  Q2ImageData("assets/Images/Items/monkey.png", "Voice/items/monkey.mp3", "猴子"),
  Q2ImageData("assets/Images/Items/pen.png", "Voice/items/pen.mp3", "筆"),
  Q2ImageData("assets/Images/Items/piano.png", "Voice/items/piano.mp3", "鋼琴"),
  Q2ImageData("assets/Images/Items/telephone.png", "Voice/items/telephone.mp3", "電話"),
  Q2ImageData("assets/Images/Items/tissue.png", "Voice/items/tissue.mp3", "衛生紙"),
  Q2ImageData("assets/Images/Items/tv.png", "Voice/items/tv.mp3", "電視"),
];