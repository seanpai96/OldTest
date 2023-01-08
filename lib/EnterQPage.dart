import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'global.dart';

class EnterQPage extends StatefulWidget {
  const EnterQPage({super.key});

  @override
  State<StatefulWidget> createState() => _EnterQPageState();
}

class _EnterQPageState extends State<EnterQPage> {
  TextEditingController ageInputController = TextEditingController();

  @override
  void initState() {
    super.initState();
    AudioPlayer().play(AssetSource('Voice/EnterQ.mp3'));
  }

  @override
  Widget build(BuildContext context) {

    String summary = "以下為個人資料:\n";
    summary += "年齡: ${user.age} 歲\n";
    summary += "性別: ${user.gender == 1 ? "男\n" : "女\n"}";
    summary += "教育程度: ";
    if(user.education == 0){
      summary += "未受教育\n";
    }else if(user.education == 1){
      summary += "國小\n";
    }else if(user.education == 2){
      summary += "國中以上\n";
    }

    summary += "確認後按開始作答！";

    return Scaffold(
      appBar: titleAppBar,
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(60),
              child: Text(summary, style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
            ),
            Padding(padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/question/1-1');
                },
                style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold)
                ),
                child: const Text("開始"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
