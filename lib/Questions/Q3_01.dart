import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../global.dart';

class Question3Page extends StatefulWidget {
  const Question3Page({super.key});

  @override
  State<StatefulWidget> createState() => _Question3PageState();
}

class _Question3PageState extends State<Question3Page> {
  TextEditingController ageInputController = TextEditingController();

  @override
  void initState() {
    super.initState();
    AudioPlayer().play(AssetSource('Voice/Q3_1.mp3'));
  }

  bool isValid = true;
  int currentNumber = 100, currentTimes = 0;
  String prompt = "100減7是多少？";

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
              child: Text(prompt, style: bigTextStyle),
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
                    const Text("", style: bigTextStyle)
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
                            pressNumber(1);
                          },
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              minimumSize: Size.square(100)
                          ),
                          child: const Text("1", style: keypadTextStyle),
                        )),
                        Expanded(child: ElevatedButton(
                          onPressed: () {
                            pressNumber(2);
                          },
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              minimumSize: Size.square(100)
                          ),
                          child: const Text("2", style: keypadTextStyle),
                        )),
                        Expanded(child: ElevatedButton(
                          onPressed: () {
                            pressNumber(3);
                          },
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              minimumSize: Size.square(100)
                          ),
                          child: const Text("3", style: keypadTextStyle),
                        ))
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Expanded(child: ElevatedButton(
                          onPressed: () {
                            pressNumber(4);
                          },
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              minimumSize: Size.square(100)
                          ),
                          child: const Text("4", style: keypadTextStyle),
                        )),
                        Expanded(child: ElevatedButton(
                          onPressed: () {
                            pressNumber(5);
                          },
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              minimumSize: Size.square(100)
                          ),
                          child: const Text("5", style: keypadTextStyle),
                        )),
                        Expanded(child: ElevatedButton(
                          onPressed: () {
                            pressNumber(6);
                          },
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              minimumSize: Size.square(100)
                          ),
                          child: const Text("6", style: keypadTextStyle),
                        ))
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Expanded(child: ElevatedButton(
                          onPressed: () {
                            pressNumber(7);
                          },
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              minimumSize: Size.square(100)
                          ),
                          child: const Text("7", style: keypadTextStyle),
                        )),
                        Expanded(child: ElevatedButton(
                          onPressed: () {
                            pressNumber(8);
                          },
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              minimumSize: Size.square(100)
                          ),
                          child: const Text("8", style: keypadTextStyle),
                        )),
                        Expanded(child: ElevatedButton(
                          onPressed: () {
                            pressNumber(9);
                          },
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              minimumSize: Size.square(100)
                          ),
                          child: const Text("9", style: keypadTextStyle),
                        ))
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Expanded(child: ElevatedButton(
                          onPressed: () {
                            clearNumber();
                          },
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              minimumSize: Size.square(100)
                          ),
                          child: const Text("清除", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
                        )),
                        Expanded(child: ElevatedButton(
                          onPressed: () {
                            pressNumber(0);
                          },
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              minimumSize: Size.square(100)
                          ),
                          child: const Text("0", style: keypadTextStyle),
                        )),
                        Expanded(child: ElevatedButton(
                          onPressed: () {
                            if(isNumeric(ageInputController.text)){
                              isValid = true;
                              confirmNumber(int.parse(ageInputController.text));
                              print(user.point);
                              Navigator.pushNamed(context, '/question/1-4');
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

  void pressNumber(int n) {
    setState(() {
      ageInputController.text += n.toString();
    });
  }

  void clearNumber() {
    setState(() {
      isValid = true;
      ageInputController.clear();
    });
  }

  void confirmNumber(int input) {
    setState(() {
      if(currentNumber - input == 7){
        user.point += 1;
      }
      currentTimes++;
      if(currentTimes == 5){
        Navigator.pushNamed(context, '/question/4-1');
      }else{
        currentNumber = input;
        prompt = "再減7是多少?";
        AudioPlayer().play(AssetSource('Voice/Q3_2.mp3'));
        clearNumber();
      }

    });
  }
}
