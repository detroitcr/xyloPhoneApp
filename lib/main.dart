//import 'package:audioplayers/audioplayers.dart';

import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    XyloPhoneApp(),
  );
}

class XyloPhoneApp extends StatelessWidget {
  //our code is large so we make small code using functions like previous app dice flutter
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildkey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber); // calling the playSound function
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildkey(color: Colors.red, soundNumber: 1),
                buildkey(color: Colors.orange, soundNumber: 2),
                buildkey(color: Colors.yellow, soundNumber: 3),
                buildkey(color: Colors.green, soundNumber: 4),
                buildkey(color: Colors.teal, soundNumber: 5),
                buildkey(color: Colors.blue, soundNumber: 6),
                buildkey(color: Colors.purple, soundNumber: 7),

                // Expanded(
                //   child: FlatButton(
                //     color: Colors.orange,
                //     onPressed: () {
                //       // final player = AudioCache();
                //       // player.play('note2.wav');
                //       playSound(2);
                //     },
                //   ),
                // ),
                // Expanded(
                //   child: FlatButton(
                //     color: Colors.yellow,
                //     onPressed: () {
                //       // final player = AudioCache();
                //       // player.play('note3.wav');
                //       playSound(3);
                //     },
                //   ),
                // ),
                // Expanded(
                //   child: FlatButton(
                //     color: Colors.green,
                //     onPressed: () {
                //       // final player = AudioCache();
                //       // player.play('note4.wav');
                //       playSound(4);
                //     },
                //   ),
                // ),
                // Expanded(
                //   child: FlatButton(
                //     color: Colors.teal,
                //     onPressed: () {
                //       // final player = AudioCache();
                //       // player.play('note5.wav');
                //       playSound(5);
                //     },
                //   ),
                // ),
                // Expanded(
                //   child: FlatButton(
                //     color: Colors.blue,
                //     onPressed: () {
                //       // final player = AudioCache();
                //       // player.play('note6.wav');
                //       playSound(6);
                //     },
                //   ),
                // ),
                // Expanded(
                //   child: FlatButton(
                //     color: Colors.purple,
                //     onPressed: () {
                //       // final player = AudioCache();
                //       // player.play('note7.wav');
                //       playSound(7);
                //     },
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

// class MyApp extends StatefulWidget {
//   const MyApp({Key key}) : super(key: key);
//
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Row(),
//         ],
//       ),
//     );
//   }
// }
