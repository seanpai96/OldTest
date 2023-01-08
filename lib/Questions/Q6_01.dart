import 'dart:io';

import 'package:flutter/material.dart';
import '../global.dart';

class Question6Page extends StatefulWidget {
  const Question6Page({super.key});

  @override
  State<StatefulWidget> createState() => _Question6PageState();
}

class _Question6PageState extends State<Question6Page> {
  TextEditingController numInputController = TextEditingController();
  bool isValid = true, enableInput = false;
  int currentNumber = 100, currentTimes = 0;
  String prompt = "";

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
                          controller: numInputController,
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

                          onPressed: enableInput ? () {
                            pressNumber(1);
                          } : null,
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              minimumSize: Size.square(100)
                          ),
                          child: const Text("1", style: keypadTextStyle),
                        )),
                        Expanded(child: ElevatedButton(
                          onPressed: enableInput ? () {
                            pressNumber(2);
                          } : null,
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              minimumSize: Size.square(100)
                          ),
                          child: const Text("2", style: keypadTextStyle),
                        )),
                        Expanded(child: ElevatedButton(
                          onPressed: enableInput ? () {
                            pressNumber(3);
                          } : null,
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
                          onPressed: enableInput ? () {
                            pressNumber(4);
                          } : null,
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              minimumSize: Size.square(100)
                          ),
                          child: const Text("4", style: keypadTextStyle),
                        )),
                        Expanded(child: ElevatedButton(
                          onPressed: enableInput ? () {
                            pressNumber(5);
                          } : null,
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              minimumSize: Size.square(100)
                          ),
                          child: const Text("5", style: keypadTextStyle),
                        )),
                        Expanded(child: ElevatedButton(
                          onPressed: enableInput ? () {
                            pressNumber(6);
                          } : null,
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
                          onPressed: enableInput ? () {
                            pressNumber(7);
                          } : null,
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              minimumSize: Size.square(100)
                          ),
                          child: const Text("7", style: keypadTextStyle),
                        )),
                        Expanded(child: ElevatedButton(
                          onPressed: enableInput ? () {
                            pressNumber(8);
                          } : null,
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              minimumSize: Size.square(100)
                          ),
                          child: const Text("8", style: keypadTextStyle),
                        )),
                        Expanded(child: ElevatedButton(
                          onPressed: enableInput ? () {
                            pressNumber(9);
                          } : null,
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
                          onPressed: enableInput ? () {
                            clearNumber();
                          } : null,
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              minimumSize: Size.square(100)
                          ),
                          child: const Text("清除", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
                        )),
                        Expanded(child: ElevatedButton(
                          onPressed: enableInput ? () {
                            pressNumber(0);
                          } : null,
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              minimumSize: Size.square(100)
                          ),
                          child: const Text("0", style: keypadTextStyle),
                        )),
                        Expanded(child: ElevatedButton(
                          onPressed: enableInput ? () {
                            if(isNumeric(numInputController.text)){
                              isValid = true;
                              confirmNumber(int.parse(numInputController.text));
                              print(user.point);
                            }else{
                              setState(() {
                                isValid = false;
                              });
                            }

                          } : null,
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
      numInputController.text += n.toString();
    });
  }

  void clearNumber() {
    setState(() {
      isValid = true;
      numInputController.clear();
    });
  }

  void confirmNumber(int input) {
    setState(() {
      if(numInputController.text == q6RandomInt.toString()){
        user.point++;
      }
      clearNumber();
      Navigator.pushNamed(context, '/question/7-intro');

    });
  }

  void toggleInput(bool state) {
    setState(() {
      enableInput = state;
    });
  }


}
