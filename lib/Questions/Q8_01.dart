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

  bool continueEnabled = false;
  int currentNumber = 0, currentAddUp = 0;


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
