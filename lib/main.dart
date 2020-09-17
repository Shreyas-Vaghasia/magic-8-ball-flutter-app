import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   int ballNumber = 3;
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ask Me Anything'),
        ),
        body: Container(
          color: Colors.lightBlueAccent,
          child: Center(
            child: Row(
              children: [
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        ballNumber = Random().nextInt(5) + 1;
                      });
                    },
                    child: Image.asset('images/ball$ballNumber.png'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
