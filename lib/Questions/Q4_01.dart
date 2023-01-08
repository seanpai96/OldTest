import 'package:flutter/material.dart';
import 'dart:math';
import '../global.dart';

class Question4Page extends StatefulWidget {
  const Question4Page({super.key});

  @override
  State<StatefulWidget> createState() => _Question4PageState();
}

class _Question4PageState extends State<Question4Page> {


  TextEditingController recognitionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: titleAppBar,
        body: Align(
            alignment: Alignment.center,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(padding: EdgeInsets.all(10),
                    child: Text(
                      "還記得我剛剛提到的三個物品嗎？\n試著講出來！",
                      style: bigTextStyle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40),
                      child: TextField(
                        controller: recognitionController, // 設定 controller
                        enabled: false, // 設定不能接受輸入
                        decoration: const InputDecoration(
                          disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)), // 設定邊框圓角弧度
                            borderSide: BorderSide(
                              color: Colors.black87, // 設定邊框的顏色
                              width: 2.0, // 設定邊框的粗細
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/profile/age');
                    },
                    style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(
                            fontSize: 80, fontWeight: FontWeight.bold)),
                    child: const Text("開始錄音"),
                  )
                ])));
  }
}
