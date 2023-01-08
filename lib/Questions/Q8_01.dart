import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../global.dart';
import '../Q2ImageData.dart';
import '../library/sound_recorder.dart';
import '../library/socket_stt.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'dart:io';



class Question8Page extends StatefulWidget {
  const Question8Page({super.key});

  @override
  State<StatefulWidget> createState() => _Question8PageState();
}

class _Question8PageState extends State<Question8Page> {

  final audioPlayer = AudioPlayer();
  bool continueEnabled = false;
  int currentNumber = 0, currentAddUp = 0;
  int index = 0;

  @override
  void initState() {
    super.initState();
    currentNumber = q8RandomIntArray[0];
    play();
  }

  play() async {
    if(q8RandomIntArray[index] == 0) {
      audioPlayer.play(AssetSource('Voice/numbers/zero.mp3'));
    }
    else if(q8RandomIntArray[index] == 1) {
      audioPlayer.play(AssetSource('Voice/numbers/one.mp3'));
    }
    else if(q8RandomIntArray[index] == 2) {
      audioPlayer.play(AssetSource('Voice/numbers/two.mp3'));
    }
    else if(q8RandomIntArray[index] == 3) {
      audioPlayer.play(AssetSource('Voice/numbers/three.mp3'));
    }
    else if(q8RandomIntArray[index] == 4) {
      audioPlayer.play(AssetSource('Voice/numbers/four.mp3'));
    }
    else if(q8RandomIntArray[index] == 5) {
      audioPlayer.play(AssetSource('Voice/numbers/five.mp3'));
    }
    else if(q8RandomIntArray[index] == 6) {
      audioPlayer.play(AssetSource('Voice/numbers/six.mp3'));
    }
    else if(q8RandomIntArray[index] == 7) {
      audioPlayer.play(AssetSource('Voice/numbers/seven.mp3'));
    }
    else if(q8RandomIntArray[index] == 8) {
      audioPlayer.play(AssetSource('Voice/numbers/eight.mp3'));
    }
    else if(q8RandomIntArray[index] == 9) {
      audioPlayer.play(AssetSource('Voice/numbers/nine.mp3'));
    }
    int flag = 1;

    audioPlayer.onPlayerComplete.listen((event) {
      if(index < 9 && flag == 1){
        flag = 0;
        setState(() {
          index = index + 1;
          currentNumber = q8RandomIntArray[index];
        });
        play();
        return;
      }
      else if(flag == 1){
        flag = 0;
        currentNumber = 0;
        evaluate();
        return;
      }
    });
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
                      width: 400,
                      height: 400,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 8),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(currentNumber.toString(), style: bigTextStyle,),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      currentAddUp++;
                    },
                    style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        minimumSize: Size.square(200),
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.red
                    ),
                    child: const Icon(Icons.add),
                  )
                ])));


  }

  void evaluate(){
    if(currentAddUp == q8TotalAnswer){
      user.point++;
    }
    Navigator.pushNamed(context, '/profile/age');
  }

}
