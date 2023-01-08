import 'package:flutter/material.dart';
import 'global.dart';


class ScorePage extends StatefulWidget {
  const ScorePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<ScorePage> createState() => _ScorePageState();
}

class _ScorePageState extends State<ScorePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    var result = "";
    if(user.education == 0){
      if(user.point < 16){
        result = "認知功能異常";
      }else{
        result = "正常";
      }
    }else if(user.education == 1){
      if(user.point < 21){
        result = "認知功能異常";
      }else{
        result = "正常";
      }
    }else{
      if(user.point < 16){
        result = "重度認知功能遺失";
      }else if(user.point <24){
        result = "輕度認知功能遺失";
      }else{
        result = "正常";
      }
    }


    return Scaffold(
      appBar: titleAppBar,
      body: Align(
        alignment: Alignment.center,
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.all(10), child: Text("您的分數是", style: bigTextStyle,),),
            Padding(padding: EdgeInsets.all(10), child: Text("${user.point}分", style: bigTextStyle,),),
            Padding(padding: EdgeInsets.all(10), child: Text("您的結果是", style: bigTextStyle,),),
            Padding(padding: EdgeInsets.all(10), child: Text(result, style: bigTextStyle,),),
          ],
        ),
      ),
    );
  }
}