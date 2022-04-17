// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:audioplayers/src/audio_cache.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  void ChangeSong(int numsong) {
    final Player = AudioCache();
    Player.play('music-$numsong.mp3');
  }

  @override
  Widget build(BuildContext context) {
    Icon MyIcon = Icon(
      Icons.repeat,
      color: Colors.black,
      size: 15.0,
    );

    Expanded ShowSongs(String SongName, int nI, Color TextColor) {
      return Expanded(
        child: Padding(
          padding: EdgeInsets.only(bottom: 1.0),
          child: RaisedButton(
            color: Colors.white,
            onPressed: () {
              ChangeSong(nI);
            },
            // ignore: prefer_const_constructors
            child: Row(
              children: [
                new SizedBox(
                  width: 50.0,
                  height: 26.0,
                  child: ElevatedButton(
                    child: MyIcon,
                    onPressed: () async {
                      for (int Start = 1; Start < 10; Start++) {
                        await Future.delayed(Duration(seconds: 10), () {
                          ChangeSong(nI);
                        });
                      }
                    },
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                Icon(
                  Icons.music_note_sharp,
                  color: TextColor,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text('$SongName',
                    style: TextStyle(
                        fontSize: 20,
                        color: TextColor,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // ignore: prefer_const_constructors
        appBar: AppBar(
          backgroundColor: Colors.indigoAccent,
          shadowColor: Color(333333),
          title: Text('Naghmaty'),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // ignore: non_constant_identifier_names
            ShowSongs('Samsung', 1, Colors.red),
            ShowSongs('Samsung Note', 2, Colors.orange),
            ShowSongs('Nokia', 3, Colors.black),
            ShowSongs('Iphone 11', 4, Colors.blueAccent),
            ShowSongs('WhatsApp', 5, Colors.purpleAccent),
            ShowSongs('Samsung S7', 6, Colors.green),
            ShowSongs('Iphone 6', 7, Colors.deepOrange),
          ],
        ),
      ),
    );
  }
}
