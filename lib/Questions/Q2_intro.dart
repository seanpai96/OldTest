import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import '../global.dart';

class Question2IntroPage extends StatefulWidget {
  const Question2IntroPage({super.key});

  @override
  State<StatefulWidget> createState() => _Question2IntroPageState();
}

class _Question2IntroPageState extends State<Question2IntroPage> {
  @override
  void initState() {
    super.initState();
    AudioPlayer().play(AssetSource('Voice/Q2_intro.mp3'));
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
                      "接下來會出現三個名詞，\n請在我把三個都唸完之後複誦一遍，\n然後記好喔！",
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
                        if(q2SelectedArray.contains(temp)){
                          continue;
                        } else {
                          q2SelectedArray[i] = temp;
                          i++;
                        }
                      }

                      Navigator.pushNamed(context, '/profile/age');
                    },
                    style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(
                            fontSize: 80, fontWeight: FontWeight.bold)),
                    child: const Text("開始"),
                  )
                ])));
  }
}
