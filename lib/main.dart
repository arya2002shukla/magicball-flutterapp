import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(home: Scaffold(
        appBar: AppBar(
          title: Text("Ask Me Anything"),backgroundColor: Colors.blue.shade800,
        ),backgroundColor: Colors.blue,
        body:   Magicball()
      ),
      ),
    );
class Magicball extends StatefulWidget {
  @override
  _MagicballState createState() => _MagicballState();
}

class _MagicballState extends State<Magicball> {
  int ballnumber=1;
  ball(){
    setState(() {
      ballnumber= Random().nextInt(5)+1;
      print("ball number = $ballnumber");
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(child: FlatButton(onPressed:(){
            ball();
          },
          child: Image.asset("images/ball$ballnumber.png"),),)
        ],
      )
    );
  }
}
