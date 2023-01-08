import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import '../global.dart';

class Question6IntroPage extends StatefulWidget {
  const Question6IntroPage({super.key});

  @override
  State<StatefulWidget> createState() => _Question6IntroPageState();
}

class _Question6IntroPageState extends State<Question6IntroPage> {
  @override
  void initState() {
    super.initState();
    AudioPlayer().play(AssetSource('Voice/Q6_intro.mp3'));
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
                      "接下來我會唸三個數字，\n請在我念完後反著順序打出來！\n\n例如當我說：123時，\n你要打：321！",
                      style: bigTextStyle,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Random rnd = Random();
                      q6RandomInt = 100+rnd.nextInt(899);
                      int tmp = q6RandomInt;
                      for(int i=0;i<3;i++){
                        q6RandomIntArray[i] = tmp.remainder(10);
                        tmp ~/= 10;
                      }
                      Navigator.pushNamed(context, '/question/6-1');
                    },
                    style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(
                            fontSize: 80, fontWeight: FontWeight.bold)),
                    child: const Text("開始"),
                  )
                ])));
  }
}
