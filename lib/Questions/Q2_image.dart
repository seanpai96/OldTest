import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../global.dart';
import '../Q2ImageData.dart';

class Question2ImagePage extends StatefulWidget {
  const Question2ImagePage({super.key});

  @override
  State<StatefulWidget> createState() => _Question2ImagePageState();
}

class _Question2ImagePageState extends State<Question2ImagePage> {

  final audioPlayer = AudioPlayer();
  var index = 0;


  Widget currentImage = q2ImageDataList[q2SelectedArray[0]].image;

  play() async {
    audioPlayer.play(AssetSource(q2ImageDataList[q2SelectedArray[index]].audioPath));
    int flag = 1;

    audioPlayer.onPlayerComplete.listen((event) {
      if(index < 3 && flag == 1){
        flag = 0;
        setState(() {
          index = index + 1;
          currentImage = q2ImageDataList[q2SelectedArray[index]].image;
        });
        play();
        return;
      }
      else if(flag == 1){
        flag = 0;
        Navigator.pushNamed(context, '/favorite');
        return;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    play();
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
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      width: 500,
                      height: 500,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 8),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: currentImage,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 8),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          q2ImageDataList[q2SelectedArray[0]].name,
                          style: bigTextStyle,
                        ),
                      ),
                    ),
                  ),
                ])));
  }
}
