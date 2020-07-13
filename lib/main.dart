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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade700,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FlatButton(
              padding: EdgeInsets.all(25.0),
              onPressed: () {
                playSound(1);
              },
              color: Colors.redAccent,
              child: Text(
                'Do',
                style: TextStyle(fontFamily: 'GrenzeGotisch', fontSize: 20.0),
              ),
            ),
            FlatButton(
              padding: EdgeInsets.all(25.0),
              onPressed: () {
                playSound(2);
              },
              color: Colors.orangeAccent,
              child: Text(
                'Re',
                style: TextStyle(fontFamily: 'GrenzeGotisch', fontSize: 20.0),
              ),
            ),
            FlatButton(
              padding: EdgeInsets.all(25.0),
              onPressed: () {
                playSound(3);
              },
              color: Colors.greenAccent,
              child: Text(
                'Mi',
                style: TextStyle(fontFamily: 'GrenzeGotisch', fontSize: 20.0),
              ),
            ),
            FlatButton(
              padding: EdgeInsets.all(25.0),
              onPressed: () {
                playSound(4);
              },
              color: Colors.blueAccent,
              child: Text(
                'Fa',
                style: TextStyle(fontFamily: 'GrenzeGotisch', fontSize: 20.0),
              ),
            ),
            FlatButton(
              padding: EdgeInsets.all(25.0),
              onPressed: () {
                playSound(5);
              },
              color: Colors.amberAccent,
              child: Text(
                'Sol',
                style: TextStyle(fontFamily: 'GrenzeGotisch', fontSize: 20.0),
              ),
            ),
            FlatButton(
              padding: EdgeInsets.all(25.0),
              onPressed: () {
                playSound(6);
              },
              color: Colors.yellowAccent,
              child: Text(
                'La',
                style: TextStyle(fontFamily: 'GrenzeGotisch', fontSize: 20.0),
              ),
            ),
            FlatButton(
              padding: EdgeInsets.all(25.0),
              onPressed: () {
                playSound(7);
              },
              color: Colors.deepPurpleAccent,
              child: Text(
                'Ti',
                style: TextStyle(fontFamily: 'GrenzeGotisch', fontSize: 20.0),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
