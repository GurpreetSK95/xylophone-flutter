import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              XylophoneBar(Colors.indigo[900], 1),
              XylophoneBar(Colors.indigo, 2),
              XylophoneBar(Colors.blue, 3),
              XylophoneBar(Colors.green, 4),
              XylophoneBar(Colors.yellow, 5),
              XylophoneBar(Colors.orange, 6),
              XylophoneBar(Colors.red, 7)
            ],
          ),
        ),
      ),
    );
  }
}

class XylophoneBar extends StatelessWidget {
  final Color color;
  final int audioFileIndex;
  final AudioCache audioCache = AudioCache();

  XylophoneBar(this.color, this.audioFileIndex);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(

        color: color,
        onPressed: () {
          audioCache.play("note$audioFileIndex.wav");
        },
      ),
    );
  }
}
