import 'package:flutter/material.dart';
import 'global.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
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
            Padding(padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/profile/age');
                },
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold)
                ),
                child: const Text("開始"),
              ),
            ),
            Padding(padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: (){

                },
                style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold)
                ),
                child: const Text("設定"),
              ),
            )
          ],
        ),
      ),
    );
  }
}