import 'package:flutter/material.dart';
import '../global.dart';
import '../Q2ImageData.dart';
import '../library/sound_recorder.dart';
import '../library/socket_stt.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'dart:io';



class Question7Page extends StatefulWidget {
  const Question7Page({super.key});

  @override
  State<StatefulWidget> createState() => _Question7PageState();
}

class _Question7PageState extends State<Question7Page> {


  TextEditingController recognitionController = TextEditingController();
  final recorder = SoundRecorder();

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
                      child: q2ImageDataList[q2SelectedArray[0]].image,
                    ),
                  ),
                  SearchBar(),
                ])));


  }

  Widget RecordButton(){
    final isRecording = recorder.isRecording;
    final icon = isRecording ? Icons.stop : Icons.mic;
    // if recording => color of button is red
    // else => color of button is white
    final primary = isRecording ? Colors.red : Colors.black;
    // if recording => text in button is STOP
    // else => text in button is START
    final text = isRecording ? 'STOP' : 'START';
    // if recording => text in button is white
    // else => color of button is black
    final onPrimary = isRecording ? Colors.black : Colors.white;

    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(175, 50),
          backgroundColor: primary,
          foregroundColor: onPrimary
      ),
      icon: Icon(icon),
      label: Text(
        text,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      onPressed: () async {
        Directory tmpDir = await path_provider.getTemporaryDirectory();
        String path = '${tmpDir.path}/SpeechRecognition.wav';

        await recorder.toggleRecording(path);
        if(!recorder.isRecording){
          await Speech2Text().connect(path, setTxt, "MTK_ch");
        }
        setState(() {
          recorder.isRecording;
        });
      },
    );

  }

  Widget SearchBar(){
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 40),
      child: TextField(
        controller: recognitionController, // 設定 controller
        enabled: false, // 設定不能接受輸入
        decoration: const InputDecoration(
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)), // 設定邊框圓角弧度
            borderSide: BorderSide(
              color: Colors.black87, // 設定邊框的顏色
              width: 2.0, // 設定邊框的粗細
            ),
          ),
        ),
      ),
    );
  }

  void setTxt(String taiTxt) {
    setState(() {
      recognitionController.text = taiTxt;
    });
  }

}
