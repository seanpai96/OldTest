import 'dart:io';

import 'package:flutter/material.dart';
import '../global.dart';

class Question1Sub4Page extends StatefulWidget {
  const Question1Sub4Page({super.key});

  @override
  State<StatefulWidget> createState() => _Question1Sub4PageState();
}

class _Question1Sub4PageState extends State<Question1Sub4Page> {
  TextEditingController ageInputController = TextEditingController();
  bool isValid = true;
  int day = 0;

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
            Padding(
              padding: EdgeInsets.all(20),
              child: const Text("今天星期幾？", style: bigTextStyle),
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: FractionallySizedBox(
                  widthFactor: 0.8,
                  child: Row(children: [
                    Expanded(
                        child: TextField(
                          controller: ageInputController,
                          enabled: false,
                          decoration: InputDecoration(
                            disabledBorder: OutlineInputBorder(
                              borderRadius:
                              const BorderRadius.all(Radius.circular(10)), // 設定邊框圓角弧度
                              borderSide: BorderSide(
                                color: isValid ? Colors.black87 : Colors.red, // 設定邊框的顏色
                                width: isValid ? 8.0 : 16.0, // 設定邊框的粗細
                              ),
                            ),
                          ),
                          style: bigTextStyle,
                          textAlign: TextAlign.center,
                        )),
                    // const Text("", style: bigTextStyle)
                  ])),
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: FractionallySizedBox(
                widthFactor: 0.7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Expanded(child: ElevatedButton(
                          onPressed: () {
                            setAge(1);
                          },
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              minimumSize: Size.square(100)
                          ),
                          child: const Text("一", style: keypadTextStyle),
                        )),
                        Expanded(child: ElevatedButton(
                          onPressed: () {
                            setAge(2);
                          },
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              minimumSize: Size.square(100)
                          ),
                          child: const Text("二", style: keypadTextStyle),
                        )),
                        Expanded(child: ElevatedButton(
                          onPressed: () {
                            setAge(3);
                          },
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              minimumSize: Size.square(100)
                          ),
                          child: const Text("三", style: keypadTextStyle),
                        ))
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Expanded(child: ElevatedButton(
                          onPressed: () {
                            setAge(4);
                          },
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              minimumSize: Size.square(100)
                          ),
                          child: const Text("四", style: keypadTextStyle),
                        )),
                        Expanded(child: ElevatedButton(
                          onPressed: () {
                            setAge(5);
                          },
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              minimumSize: Size.square(100)
                          ),
                          child: const Text("五", style: keypadTextStyle),
                        )),
                        Expanded(child: ElevatedButton(
                          onPressed: () {
                            setAge(6);
                          },
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              minimumSize: Size.square(100)
                          ),
                          child: const Text("六", style: keypadTextStyle),
                        ))
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Expanded(child: ElevatedButton(

                          onPressed: null,
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              minimumSize: Size.square(100)
                          ),
                          child: const Text("", style: keypadTextStyle),
                        )),
                        Expanded(child: ElevatedButton(
                          onPressed: () {
                            setAge(7);
                          },
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              minimumSize: Size.square(100)
                          ),
                          child: const Text("日", style: keypadTextStyle),
                        )),
                        Expanded(child: ElevatedButton(
                          onPressed: null,
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              minimumSize: Size.square(100)
                          ),
                          child: const Text("", style: keypadTextStyle),
                        ))
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Expanded(child: ElevatedButton(
                          onPressed: () {
                            clearAge();
                          },
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              minimumSize: Size.square(100)
                          ),
                          child: const Text("清除", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
                        )),
                        Expanded(child: ElevatedButton(
                          onPressed: null,
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              minimumSize: Size.square(100)
                          ),
                          child: const Text("", style: keypadTextStyle),
                        )),
                        Expanded(child: ElevatedButton(
                          onPressed: () {
                            if(day != 0){
                              isValid = true;
                              saveAge();
                              print(user.point);
                              Navigator.pushNamed(context, '/question/1-5');
                            }else{
                              setState(() {
                                isValid = false;
                              });
                            }

                          },
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              minimumSize: Size.square(100)
                          ),
                          child: const Text("好", style: keypadTextStyle),
                        ))
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],


        ),
      ),
    );
  }

  void setAge(int n) {
    setState(() {
      ageInputController.text = "星期";
      if(n == 1){
        ageInputController.text += "一";
      }else if(n == 2){
        ageInputController.text += "二";
      }else if(n == 3){
        ageInputController.text += "三";
      }else if(n == 4){
        ageInputController.text += "四";
      }else if(n == 5){
        ageInputController.text += "五";
      }else if(n == 6){
        ageInputController.text += "六";
      }else if(n == 7){
        ageInputController.text += "日";
      }
      day = n;
      });
  }

  void clearAge() {
    setState(() {
      isValid = true;
      ageInputController.clear();
    });
  }

  void saveAge() {
    setState(() {
      DateTime now = DateTime.now();
      if(now.weekday == day){
        user.point += 1;
      }
    });
  }
}
