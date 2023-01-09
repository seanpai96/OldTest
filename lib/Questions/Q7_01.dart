import 'package:flutter/material.dart';
import '../global.dart';
import '../Q2ImageData.dart';
import '../library/sound_recorder.dart';
import '../library/socket_stt.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'dart:io';
import 'package:audioplayers/audioplayers.dart';



class Question7Page extends StatefulWidget {
  const Question7Page({super.key});

  @override
  State<StatefulWidget> createState() => _Question7PageState();
}

class _Question7PageState extends State<Question7Page> {

  bool continueEnabled = false;
  int currentIndex = 0;

  TextEditingController recognitionController = TextEditingController();
  final recorder = SoundRecorder();

  @override
  void initState() {
    super.initState();
    AudioPlayer().play(AssetSource('Voice/Q7_1.mp3'));
    recorder.init();
  }

  @override
  void dispose() {
    recorder.dispose();
    super.dispose();
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
                      child: q2ImageDataList[q7SelectedArray[currentIndex]].image,
                    ),
                  ),
                  SearchBar(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildRecord(),
                      ElevatedButton(
                        onPressed: continueEnabled ? () {
                          evaluate();
                        } : null,
                        style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(
                                fontSize: 80, fontWeight: FontWeight.bold)
                        ),
                        child: const Text("繼續"),
                      )
                    ]
                  )
                ])));


  }

  Widget buildRecord() {
    // whether is recording
    final isRecording = recorder.isRecording;
    // if recording => icon is Icons.stop
    // else => icon is Icons.mic
    final icon = isRecording ? Icons.stop : Icons.mic;
    // if recording => color of button is red
    // else => color of button is white
    final primary = isRecording ? Colors.red : Colors.white;
    // if recording => text in button is STOP
    // else => text in button is START
    final text = isRecording ? '停止錄音' : '開始錄音';
    // if recording => text in button is white
    // else => color of button is black
    final onPrimary = isRecording ? Colors.white : Colors.black;

    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        // 設定 Icon 大小及屬性
        foregroundColor: onPrimary,
        backgroundColor: primary,
        minimumSize: const Size(175, 50),
      ),
      icon: Icon(icon),
      label: Text(
        text,
        // 設定字體大小及字體粗細（bold粗體，normal正常體）
        style: const TextStyle(fontSize: 60, fontWeight: FontWeight.bold)
      ),
      // 當 icon 被點擊時執行的動作
      onPressed: () async {
        // getTemporaryDirectory(): 取得暫存資料夾，這個資料夾隨時可能被系統或使用者操作清除
        Directory tempDir = await path_provider.getTemporaryDirectory();
        // define file directory
        String path = '${tempDir.path}/SpeechRecognition.wav';
        // 控制開始錄音或停止錄音
        await recorder.toggleRecording(path);
        // When stop recording, pass wave file to socket
        if (!recorder.isRecording) {
          await Speech2Text().connect(path, setTxt, "MTK_ch");
        }
        // set state is recording or stop
        setState(() {
          recorder.isRecording;
        });
      },
    );
  }

  void setTxt(taiTxt) {
    setState(() {
      recognitionController.text += taiTxt;
      continueEnabled = true;
    });
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
        style: const TextStyle(fontSize: 40),
      ),
    );
  }

  void evaluate(){
    if(recognitionController.text.contains(q2ImageDataList[q7SelectedArray[currentIndex]].name)){
      user.point++;
    }
    setState(() {
      continueEnabled = false;
      recognitionController.clear();
      currentIndex++;
      if(currentIndex >= 3){
        currentIndex--;
        print("Question7, user.point${user.point}");
        Navigator.pushNamed(context, '/question/8-intro');
      }else{
        AudioPlayer().play(AssetSource('Voice/Q7_1.mp3'));
      }
    });
  }

}
