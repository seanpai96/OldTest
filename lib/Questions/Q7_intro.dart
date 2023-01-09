import 'package:flutter/material.dart';
import '../global.dart';
import 'dart:math';
import 'package:audioplayers/audioplayers.dart';


class Question7IntroPage extends StatefulWidget {
  const Question7IntroPage({super.key});

  @override
  State<StatefulWidget> createState() => _Question7IntroPageState();
}

class _Question7IntroPageState extends State<Question7IntroPage> {

  @override
  void initState() {
    super.initState();
    AudioPlayer().play(AssetSource('Voice/Q7_intro.mp3'));
  }

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
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "接下來會出現幾張圖片\n請說出他們是什麼物品！",
                      style: bigTextStyle,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      //random select three number from 0 to 9 and put them into q2SelectedArray
                      Random random = Random();
                      int i = 0;
                      while(i < 3){
                        int temp = random.nextInt(10);
                        if(q7SelectedArray.contains(temp)){
                          continue;
                        } else {
                          q7SelectedArray[i] = temp;
                          i++;
                        }
                      }
                      Navigator.pushNamed(context, '/question/7-1');
                    },
                    style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(
                            fontSize: 80, fontWeight: FontWeight.bold)),
                    child: const Text("開始"),
                  )
                ])));
  }
}
