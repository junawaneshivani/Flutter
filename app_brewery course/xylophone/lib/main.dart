import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  Expanded drawBar(Color color, int num){
    return Expanded(
      child: Container(
        child: FlatButton(
          child: null,
          color: color,
          onPressed: () {
            final player = AudioCache();
            player.play('note$num.wav');
          },
        ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column( 
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              drawBar(Colors.red, 1),
              drawBar(Colors.orange, 2),
              drawBar(Colors.yellow, 3),
              drawBar(Colors.green, 4),
              drawBar(Colors.blue, 5),
              drawBar(Colors.pink, 6),
              drawBar(Colors.purple, 7),              
            ],
          ),),
      ),
    );
  }

}

