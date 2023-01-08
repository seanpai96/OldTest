import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../global.dart';

class Question5IntroPage extends StatefulWidget {
  const Question5IntroPage({super.key});

  @override
  State<StatefulWidget> createState() => _Question5IntroPageState();
}

class _Question5IntroPageState extends State<Question5IntroPage> {
  @override
  void initState() {
    super.initState();
    AudioPlayer().play(AssetSource('Voice/Q5_intro.mp3'));
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
                      "接下來我會唸五個數字，\n請在我念完後照順序打出來！",
                      style: bigTextStyle,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
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
