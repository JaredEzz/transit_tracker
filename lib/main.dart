import 'package:flutter/material.dart';

import 'pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Transit Tracker',
      theme: ThemeData(
//        primarySwatch: Colors.blue,
        backgroundColor: Color.lerp(Colors.black, Colors.blueAccent, 0.6)
      ),
      home: HomePage(),
    );
  }
}
