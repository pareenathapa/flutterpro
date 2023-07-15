import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GameStart extends StatefulWidget {


  @override
  GameStartState createState()  => GameStartState();
}


class GameStartState extends State<GameStart> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    bool music = true;
    bool toggle = false;
    bool setMusic = true;
    Image updateMusic = music ? Image.asset("images/music.png") : Image.asset("images/noMusic.png");

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                icon: toggle ? Image.asset("images/music.png") : Image.asset("images/noMusic.png"),
                onPressed: () {
                  setState(() {
                    // Here we changing the icon.
                    toggle = !toggle;
                    print("$toggle");
                  });
                }),
            GestureDetector(
              onTap: () {
                setState(() {
                  // Toggle light when tapped.
                  setMusic = !setMusic;
                });
              },
              child: Container(
                //color: Colors.yellow.shade600,
                padding: const EdgeInsets.all(8),
                // Change button text when light changes state.
                child: setMusic ? Image.asset("images/music.png") : Image.asset("images/noMusic.png"),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 50),child: TextButton(
              onPressed: (() {
                setState(() {
                  music = false;
                  print("$music");
                });
              }),
              child: music? Image.asset("images/music.png") : Image.asset("images/noMusic.png"),
            ),),
            Padding(padding: EdgeInsets.only(top: 50),child: TextButton(
              onPressed: (() {
                setState(() {
                  music = false;
                  print("$music");
                });
              }),
              child: music? Image.asset("images/music.png") : Image.asset("images/noMusic.png"),
            ),),

            Padding(padding: EdgeInsets.only(top: 50),  child: IconButton(
              onPressed: (() {
                setState(() {
                  music = !music;
                });
              }),
              icon: ((music)? Image.asset("images/music.png") : Image.asset("images/noMusic.png")),
              iconSize: 50,),),

            Padding(padding: EdgeInsets.only(top: 50), child: Container(color: Colors.red, height: 50, width: 50,alignment: Alignment.topRight,),),
          ],
        ),
      ),
    );
  }

}