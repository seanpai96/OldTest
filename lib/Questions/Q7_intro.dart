import 'package:flutter/material.dart';
import '../global.dart';

class Question7IntroPage extends StatefulWidget {
  const Question7IntroPage({super.key});

  @override
  State<StatefulWidget> createState() => _Question7IntroPageState();
}

class _Question7IntroPageState extends State<Question7IntroPage> {
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
                      "接下來會出現幾張圖片，請說出他們是什麼物品！",
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
