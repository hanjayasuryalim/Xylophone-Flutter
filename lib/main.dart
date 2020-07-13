import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FlatButton(
              padding: EdgeInsets.all(25.0),
              onPressed: () {
                player.play('note1.wav');
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
                player.play('note2.wav');
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
                player.play('note3.wav');
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
                player.play('note4.wav');
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
                player.play('note5.wav');
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
                player.play('note6.wav');
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
                player.play('note7.wav');
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
