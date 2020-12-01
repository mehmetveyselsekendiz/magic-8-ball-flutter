import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue.shade400,
          appBar: AppBar(
            backgroundColor: Colors.blue.shade800,
            title: Center(
              child: Text('Ask Me Anything'),
            ),
          ),
          body: Answers(),
        ),
      ),
    );

class Answers extends StatefulWidget {
  @override
  _AnswersState createState() => _AnswersState();
}

class _AnswersState extends State<Answers> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            count = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('./images/ball$count.png'),
      ),
    );
  }
}
