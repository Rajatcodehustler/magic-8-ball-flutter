import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text('Ask me anything'), backgroundColor: Colors.blue[900]),
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: magicball(),
        ),
      ),
    ),
  );
}

class magicball extends StatefulWidget {
  @override
  _magicballState createState() => _magicballState();
}

class _magicballState extends State<magicball> {
  int mb=1;
  void buttonpress() {
    setState(() {
      mb = Random().nextInt(5)+1;


    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: TextButton( onPressed: (){
        buttonpress();
      },
        child: Column(
          children: [
            Expanded(
              child: Image.asset('images/ball$mb.png'),
            ),
          ],
        ),
      ),
    );
  }
}
