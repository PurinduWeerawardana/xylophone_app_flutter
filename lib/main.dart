import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // static AudioCache instance = AudioCache();
  Expanded drawKeys({required Color color, required int soundNumber}) {
    return (Expanded(
      child: TextButton(
        onPressed: () {
          final player = AudioPlayer();
          // player.setSource(AssetSource('note1,wav'));
          player.play(AssetSource('note1,wav'));
        },
        child: Container(
          color: color,
        ),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              drawKeys(color: Colors.red, soundNumber: 1),
              drawKeys(color: Colors.orange, soundNumber: 2),
              drawKeys(color: Colors.yellow, soundNumber: 3),
              drawKeys(color: Colors.green, soundNumber: 4),
              drawKeys(color: Colors.blue, soundNumber: 5),
              drawKeys(color: Colors.indigo, soundNumber: 6),
              drawKeys(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
