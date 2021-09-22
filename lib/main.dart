import 'package:just_audio/just_audio.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  XylophoneApp createState() => XylophoneApp();

}

class XylophoneApp extends State<MyApp> {
  AudioPlayer player;

  @override
  void initState(){
    super.initState();
    player = AudioPlayer();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[

                Expanded(
                  child: TextButton(

                    onPressed: () async{
                      //final url = "https://www.applesaucekids.com/sound%20effects/moo.mp3";
                      //await player.setUrl(url);
                      await player.setAsset('assets/note2.wav');
                      player.play();
                    },
                    child: Text('Click Me'),
                  ),
                ),
                Expanded(
                  child: TextButton(

                    onPressed: () async{
                      //final url = "https://www.applesaucekids.com/sound%20effects/moo.mp3";
                      //await player.setUrl(url);
                      await player.setAsset('assets/note3.wav');
                      player.play();
                    },
                    child: Text('Click Me'),
                  ),
                ),
                Expanded(
                  child: TextButton(

                    onPressed: () async{
                      //final url = "https://www.applesaucekids.com/sound%20effects/moo.mp3";
                      //await player.setUrl(url);
                      await player.setAsset('assets/note3.wav');
                      player.play();
                    },
                    child: Text('Click Me'),
                  ),
                ),

        ],
            ),
          ),
        ),
    );
  }
}