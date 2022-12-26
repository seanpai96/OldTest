import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'global.dart';

class GenderInputPage extends StatefulWidget {
  const GenderInputPage({super.key});

  @override
  State<StatefulWidget> createState() => _GenderInputPageState();
}

class _GenderInputPageState extends State<GenderInputPage> {
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
              child: Text("請選擇性別", style: bigTextStyle),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(300, 300),
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white),
                    onPressed: () {
                      user.gender = 1;
                      Navigator.pushNamed(context, '/profile/edu');
                    },
                    child: const Text(
                      "男",
                      style: TextStyle(fontSize: 120),
                    )),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(300, 300),
                        backgroundColor: Colors.pink,
                        foregroundColor: Colors.white),
                    onPressed: () {
                      user.gender = 0;
                      Navigator.pushNamed(context, '/profile/edu');
                    },
                    child: const Text(
                      "女",
                      style: TextStyle(fontSize: 120),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
