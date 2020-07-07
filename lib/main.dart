import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundno) {
    final player = AudioCache();
    player.play('note$soundno.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              FlatButton(
                color: Colors.red,
                onPressed: () {
                  playsound(1);
                },
              ),
              FlatButton(
                color: Colors.orange,
                onPressed: () {
                  playsound(2);
                },
              ),
              FlatButton(
                color: Colors.yellow,
                onPressed: () {
                  playsound(3);
                },
              ),
              FlatButton(
                color: Colors.green,
                onPressed: () {
                  playsound(4);
                },
              ),
              FlatButton(
                color: Colors.blue,
                onPressed: () {
                  playsound(5);
                },
              ),
              FlatButton(
                color: Colors.indigo,
                onPressed: () {
                  playsound(6);
                },
              ),
              FlatButton(
                color: Colors.blueGrey,
                onPressed: () {
                  playsound(7);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
