import 'package:flutter/material.dart';

class Q2ImageData{
  String path = "";
  String name = "";
  late Widget image;

  // Constructor
  Q2ImageData(this.path, this.name){
    image = Image.asset(path);
  }
}

//create a list of Q2ImageData
List<Q2ImageData> q2ImageDataList = [
  Q2ImageData("assets/Images/Items/apple.png", "蘋果"),
  Q2ImageData("assets/Images/Items/banana.png", "香蕉"),
  Q2ImageData("assets/Images/Items/calculator.png", "計算機"),
  Q2ImageData("assets/Images/Items/car.png", "汽車"),
  Q2ImageData("assets/Images/Items/chair.png", "椅"),
  Q2ImageData("assets/Images/Items/eraser.png", "橡皮擦"),
  Q2ImageData("assets/Images/Items/fan.png", "風扇"),
  Q2ImageData("assets/Images/Items/hairdryer.png", "吹風機"),
  Q2ImageData("assets/Images/Items/monkey.png", "猴子"),
  Q2ImageData("assets/Images/Items/pen.png", "筆"),
  Q2ImageData("assets/Images/Items/piano.png", "鋼琴"),
  Q2ImageData("assets/Images/Items/telephone.png", "電話"),
  Q2ImageData("assets/Images/Items/tissue.png", "衛生紙"),
  Q2ImageData("assets/Images/Items/tv.png", "電視"),
];