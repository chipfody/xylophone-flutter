import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Expanded buildKey({int place, Color color}) { //need'{}' b/c they are named parameters from the call below
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(place);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(place: 1, color: Colors.red),
              buildKey(place: 2, color: Colors.orange),
              buildKey(place: 3, color: Colors.yellow),
              buildKey(place: 4, color: Colors.green),
              buildKey(place: 5, color: Colors.blue),
              buildKey(place: 6, color: Colors.indigo),
              buildKey(place: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
