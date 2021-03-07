import 'package:flutter/material.dart';
import 'package:iFuel/newAb.dart';
import 'homePage.dart';

void main() {
  runApp(MyHomePg());
}

class MyHomePg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/addAbast': (context) => AddAbast()
      },
    );
    //home: HomePage());
  }
}
