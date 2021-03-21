import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  Widget playSound(Color color, String soundNum) {
    return FlatButton(
      color: color,
      onPressed: () {
        final player = AudioCache();
        player.play('note$soundNum.wav');
      },
      child: null,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            playSound(Colors.red, "1"),
            playSound(Colors.orange, "2"),
            playSound(Colors.yellow, "3"),
            playSound(Colors.green, "4"),
            playSound(Colors.blue, "5"),
            playSound(Colors.indigo, "6"),
            playSound(Colors.purple, "7"),
          ],
        ),
      ),
    );
  }
}
