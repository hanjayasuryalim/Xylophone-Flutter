import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();
  void playSound(int soundNumber) {
    player.play('note$soundNumber.wav');
  }

  Expanded buildButton({Color color, int soundNumber, String toWrite}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNumber);
        },
        color: color,
        child: Text(
          toWrite,
          style: TextStyle(fontFamily: 'GrenzeGotisch', fontSize: 20.0),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            buildButton(color: Colors.redAccent, soundNumber: 1, toWrite: 'Do'),
            buildButton(
                color: Colors.orangeAccent, soundNumber: 2, toWrite: 'Re'),
            buildButton(
                color: Colors.yellowAccent, soundNumber: 3, toWrite: 'Mi'),
            buildButton(
                color: Colors.greenAccent, soundNumber: 4, toWrite: 'Fa'),
            buildButton(
                color: Colors.blueAccent, soundNumber: 5, toWrite: 'Sol'),
            buildButton(
                color: Colors.amberAccent, soundNumber: 6, toWrite: 'La'),
            buildButton(
                color: Colors.purpleAccent, soundNumber: 7, toWrite: 'Ti'),
          ],
        )),
      ),
    );
  }
}
