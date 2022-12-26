import 'package:flutter/material.dart';
import '../global.dart';

class Question1Sub5Page extends StatefulWidget {
  const Question1Sub5Page({super.key});

  @override
  State<StatefulWidget> createState() => _Question1Sub5PageState();
}

class _Question1Sub5PageState extends State<Question1Sub5Page> {
  TextEditingController ageInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    int month = DateTime.now().month, currentSeason = 0;
    if(month >= 2 && month <= 4) {
      currentSeason = 1;
    } else if(month >= 5 && month <= 7) {
      currentSeason = 2;
    } else if(month >= 8 && month <= 10) {
      currentSeason = 3;
    } else if(month == 1 || month >= 11) {
      currentSeason = 4;
    }
    
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
              child: Text("現在是什麼季節", style: bigTextStyle),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(300, 300),
                        backgroundColor: Colors.green),
                    onPressed: () {
                      if(currentSeason == 1){
                        user.point += 1;
                      }
                      print(user.point);
                      // Navigator.pushNamed(context, '/profile/enterQ');
                    },
                    child: const Text(
                      "春",
                      style: TextStyle(fontSize: 120),
                    )),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(300, 300),
                        backgroundColor: Colors.deepOrange[800]
                    ),
                    onPressed: () {
                      if(currentSeason == 2){
                        user.point += 1;
                      }
                      print(user.point);
                      // Navigator.pushNamed(context, '/profile/enterQ');
                    },
                    child: const Text(
                      "夏",
                      style: TextStyle(fontSize: 120),
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(300, 300),
                        backgroundColor: Colors.orange),
                    onPressed: () {
                      if(currentSeason == 3){
                        user.point += 1;
                      }
                      print(user.point);
                      // Navigator.pushNamed(context, '/profile/enterQ');
                    },
                    child: const Text(
                      "秋",
                      style: TextStyle(fontSize: 120),
                    )),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(300, 300),
                        backgroundColor: Colors.blue
                    ),
                    onPressed: () {
                      if(currentSeason == 4){
                        user.point += 1;
                      }
                      print(user.point);
                      // Navigator.pushNamed(context, '/profile/enterQ');
                    },
                    child: const Text(
                      "冬",
                      style: TextStyle(fontSize: 120),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
