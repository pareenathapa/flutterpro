import 'package:flutter/material.dart';
import 'homep_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hang man Game',
      theme: ThemeData(
        primarySwatch: Colors.blue, scaffoldBackgroundColor: Colors.black,
      ),
      home: HomeWidget(),
    );
  }
}

