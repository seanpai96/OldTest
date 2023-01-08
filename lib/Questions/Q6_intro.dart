import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
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
