import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'global.dart';

class AgeInputPage extends StatefulWidget {
  const AgeInputPage({super.key});

  @override
  State<StatefulWidget> createState() => _AgeInputPageState();
}

class _AgeInputPageState extends State<AgeInputPage> {
  TextEditingController ageInputController = TextEditingController();
  bool isValid = true;

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
              child: const Text("請輸入年齡", style: bigTextStyle),
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
                    const Text(" 歲", style: bigTextStyle)
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
                            addAge(1);
                          },
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            minimumSize: Size.square(100)
                          ),
                          child: const Text("1", style: keypadTextStyle),
                        )),
                        Expanded(child: ElevatedButton(
                          onPressed: () {
                            addAge(2);
                          },
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                              minimumSize: Size.square(100)
                          ),
                          child: const Text("2", style: keypadTextStyle),
                        )),
                        Expanded(child: ElevatedButton(
                          onPressed: () {
                            addAge(3);
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
                            addAge(4);
                          },
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              minimumSize: Size.square(100)
                          ),
                          child: const Text("4", style: keypadTextStyle),
                        )),
                        Expanded(child: ElevatedButton(
                          onPressed: () {
                            addAge(5);
                          },
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              minimumSize: Size.square(100)
                          ),
                          child: const Text("5", style: keypadTextStyle),
                        )),
                        Expanded(child: ElevatedButton(
                          onPressed: () {
                            addAge(6);
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
                            addAge(7);
                          },
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              minimumSize: Size.square(100)
                          ),
                          child: const Text("7", style: keypadTextStyle),
                        )),
                        Expanded(child: ElevatedButton(
                          onPressed: () {
                            addAge(8);
                          },
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              minimumSize: Size.square(100)
                          ),
                          child: const Text("8", style: keypadTextStyle),
                        )),
                        Expanded(child: ElevatedButton(
                          onPressed: () {
                            addAge(9);
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
                            clearAge();
                          },
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              minimumSize: Size.square(100)
                          ),
                          child: const Text("清除", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
                        )),
                        Expanded(child: ElevatedButton(
                          onPressed: () {
                            addAge(0);
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
                              saveAge(int.parse(ageInputController.text));
                              Navigator.pushNamed(context, '/profile/gender');
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

  void addAge(int n) {
    setState(() {
      ageInputController.text += n.toString();
    });
  }

  void clearAge() {
    setState(() {
      isValid = true;
      ageInputController.clear();
    });
  }

  void saveAge(int age) {
    setState(() {
      user.age = age;
    });
  }
}
