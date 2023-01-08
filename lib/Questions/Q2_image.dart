import 'package:flutter/material.dart';
import '../global.dart';
import '../Q2ImageData.dart';

class Question2ImagePage extends StatefulWidget {
  const Question2ImagePage({super.key});

  @override
  State<StatefulWidget> createState() => _Question2ImagePageState();
}

class _Question2ImagePageState extends State<Question2ImagePage> {
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
                      width: 500,
                      height: 500,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 8),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: q2ImageDataList[q2SelectedArray[0]].image,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 8),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          q2ImageDataList[q2SelectedArray[0]].name,
                          style: bigTextStyle,
                        ),
                      ),
                    ),
                  ),
                ])));
  }
}
