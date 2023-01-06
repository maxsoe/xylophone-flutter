import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: ElevatedButton(
                child: Text('Activate sound 1'),
                onPressed: () {
                  final player = AudioCache();
                  player.play('note1.wav');
                }),
          ),
        ),
      ),
    );
  }
}
