import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
    debugPrint('note$number played');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  child: Text('Activate sound 1'),
                  onPressed: () {
                    playSound(1);
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                ),
                ElevatedButton(
                  child: Text('Activate sound 2'),
                  onPressed: () {
                    playSound(2);
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                ),
                ElevatedButton(
                  child: Text('Activate sound 3'),
                  onPressed: () {
                    playSound(3);
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                ),
                ElevatedButton(
                  child: Text('Activate sound 4'),
                  onPressed: () {
                    playSound(4);
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                ),
                ElevatedButton(
                  child: Text('Activate sound 5'),
                  onPressed: () {
                    playSound(5);
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
                ),
                ElevatedButton(
                  child: Text('Activate sound 6'),
                  onPressed: () {
                    playSound(6);
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                ),
                ElevatedButton(
                  child: Text('Activate sound 7'),
                  onPressed: () {
                    playSound(7);
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
