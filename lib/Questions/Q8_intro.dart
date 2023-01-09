import 'package:flutter/material.dart';
import '../global.dart';
import 'dart:math';
import 'package:audioplayers/audioplayers.dart';


class Question8IntroPage extends StatefulWidget {
  const Question8IntroPage({super.key});

  @override
  State<StatefulWidget> createState() => _Question8IntroPageState();
}

class _Question8IntroPageState extends State<Question8IntroPage> {


  @override
  void initState() {
    super.initState();
    AudioPlayer().play(AssetSource('Voice/Q8_intro.mp3'));
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
                      "接下來當螢幕上出現1時，\n請按下按鈕！",
                      style: bigTextStyle,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      //random select three number from 0 to 9 and put them into q2SelectedArray
                      Random random = Random();
                      int i = 0;
                      while(i < 10){
                        int temp = random.nextInt(10);
                        q8RandomIntArray[i] = temp;
                        if(temp == 1) q8TotalAnswer++;
                        i++;
                      }
                      if(q8TotalAnswer == 0){
                        int temp = 1 + random.nextInt(2);
                        for(int i=0;i<temp;i++){
                          int tmpIndex = random.nextInt(10);
                          q8RandomIntArray[tmpIndex] = 1;
                          q8TotalAnswer++;
                        }
                      }
                      Navigator.pushNamed(context, '/question/8-1');
                    },
                    style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(
                            fontSize: 80, fontWeight: FontWeight.bold)),
                    child: const Text("開始"),
                  )
                ])));
  }
}
