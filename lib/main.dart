import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(BallPage());

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue.shade900,
        ),
        body: Center(
          child: Ball(),
        ),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNum = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        onPressed: () {
          setState(() {
            ballNum = Random().nextInt(5) + 1;
            print(ballNum);
          });
        },
        child: Image.asset('images/ball$ballNum.png'),
      ),
    );
  }
}
