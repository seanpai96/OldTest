import 'package:flutter/material.dart';
import '../global.dart';
import 'package:audioplayers/audioplayers.dart';


class Question9IntroPage extends StatefulWidget {
  const Question9IntroPage({super.key});

  @override
  State<StatefulWidget> createState() => _Question9IntroPageState();
}

class _Question9IntroPageState extends State<Question9IntroPage> {


  @override
  void initState() {
    super.initState();
    AudioPlayer().play(AssetSource('Voice/Q9_intro.mp3'));
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
                      "接下來我會說一句話，\n說完後請跟著說一次！",
                      style: bigTextStyle,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/question/9-1');
                    },
                    style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(
                            fontSize: 80, fontWeight: FontWeight.bold)),
                    child: const Text("開始"),
                  )
                ])));
  }
}
