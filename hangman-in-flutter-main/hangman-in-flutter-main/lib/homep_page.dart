import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'game_start.dart';

class HomeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeWidgetState();
  }
}

enum Language {
  dart,
  c,
}
bool _lightIsOn = true;


Language? _language = Language.dart;

class HomeWidgetState extends State<HomeWidget> {
  @override
  void initState() {
    // TODO: implement initState
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
                children: [
                  Image.asset("images/logores.png"),
                  Center(
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.topCenter,
                          children: [

                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  // Toggle light when tapped.
                                  final nextPage = GameStart();
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) => GameStart()),);
                                });
                              },
                              child: Container(
                                //color: Colors.yellow.shade600,
                                padding: const EdgeInsets.all(0),
                                // Change button text when light changes state.
                                // child: Image.asset("images/play1.png"),
                              ),
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
          ),
    );
  }
}
