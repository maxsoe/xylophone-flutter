import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class PianoKey extends StatelessWidget {
  PianoKey({this.number, this.color});

  final int number;
  final Color color;

  void playSound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
    debugPrint('note$number played');
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        child: Text('Activate sound $number'),
        onPressed: () {
          playSound(number);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: ContinuousRectangleBorder(),
        ),
      ),
    );
  }
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisSize: MainAxisSize.max,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PianoKey(number: 1, color: Colors.red),
              PianoKey(number: 2, color: Colors.orange),
              PianoKey(number: 3, color: Colors.yellow),
              PianoKey(number: 4, color: Colors.green),
              PianoKey(number: 5, color: Colors.blue),
              PianoKey(number: 6, color: Colors.indigo),
              PianoKey(number: 7, color: Colors.purple),
              // Expanded(
              //   child: ElevatedButton(
              //     child: Text('Activate sound 2'),
              //     onPressed: () {
              //       playSound(2);
              //     },
              //     style: ElevatedButton.styleFrom(
              //       backgroundColor: Colors.orange,
              //       shape: ContinuousRectangleBorder(),
              //     ),
              //   ),
              // ),
              // Expanded(
              //   child: ElevatedButton(
              //     child: Text('Activate sound 3'),
              //     onPressed: () {
              //       playSound(3);
              //     },
              //     style: ElevatedButton.styleFrom(
              //         backgroundColor: Colors.yellow,
              //         shape: ContinuousRectangleBorder()),
              //   ),
              // ),
              // Expanded(
              //   child: ElevatedButton(
              //     child: Text('Activate sound 4'),
              //     onPressed: () {
              //       playSound(4);
              //     },
              //     style: ElevatedButton.styleFrom(
              //         backgroundColor: Colors.green,
              //         shape: ContinuousRectangleBorder()),
              //   ),
              // ),
              // Expanded(
              //   child: ElevatedButton(
              //     child: Text('Activate sound 5'),
              //     onPressed: () {
              //       playSound(5);
              //     },
              //     style: ElevatedButton.styleFrom(
              //         backgroundColor: Colors.teal,
              //         shape: ContinuousRectangleBorder()),
              //   ),
              // ),
              // Expanded(
              //   child: ElevatedButton(
              //     child: Text('Activate sound 6'),
              //     onPressed: () {
              //       playSound(6);
              //     },
              //     style: ElevatedButton.styleFrom(
              //         backgroundColor: Colors.blue,
              //         shape: ContinuousRectangleBorder()),
              //   ),
              // ),
              // Expanded(
              //   child: ElevatedButton(
              //     child: Text('Activate sound 7'),
              //     onPressed: () {
              //       playSound(7);
              //     },
              //     style: ElevatedButton.styleFrom(
              //         backgroundColor: Colors.purple,
              //         shape: ContinuousRectangleBorder()),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
