import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'global.dart';

class EduInputPage extends StatefulWidget {
  const EduInputPage({super.key});

  @override
  State<StatefulWidget> createState() => _EduInputPageState();
}

class _EduInputPageState extends State<EduInputPage> {
  TextEditingController ageInputController = TextEditingController();

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
              padding: EdgeInsets.all(60),
              child: Text("請選擇教育程度", style: bigTextStyle),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(300, 300),
                        backgroundColor: Colors.green[800]),
                    onPressed: () {
                      user.education = 1;
                      Navigator.pushNamed(context, '/profile/enterQ');
                    },
                    child: const Text(
                      "小學",
                      style: TextStyle(fontSize: 80),
                    )),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(300, 300),
                      backgroundColor: Colors.deepPurple
                    ),
                    onPressed: () {
                      user.education = 2;
                      Navigator.pushNamed(context, '/profile/enterQ');
                    },
                    child: const Text(
                      "國中\n以上",
                      style: TextStyle(fontSize: 80),
                    ))
              ],
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(600, 300),
                    backgroundColor: Colors.deepOrange

                ),
                onPressed: () {
                  user.education = 0;
                  Navigator.pushNamed(context, '/profile/enterQ');
                },
                child: const Text(
                  "未受教育",
                  style: TextStyle(fontSize: 80),
                ))
          ],
        ),
      ),
    );
  }
}
