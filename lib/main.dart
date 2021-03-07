import 'package:flutter/material.dart';

main() {
  runApp(MyHomePg());
}

class MyHomePg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var untilLastKm = 50;
  var untilLastAb = 3;
  var lastKm = 530;
  var lastAb = 31;
  var mediaCons = 0.0;
  @override
  Widget build(BuildContext context) {
    mediaCons = (lastKm - untilLastKm) / lastAb;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'iFuel',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Text(
                'Penultimo Abastecimento:',
                style: TextStyle(fontSize: 20),
              )
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text(untilLastKm.toString() + ' KM',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text(untilLastAb.toString() + ' L',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Text(
                'Ultimo Abastecimento:',
                style: TextStyle(fontSize: 20),
              )
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text(
                lastKm.toString() + ' KM',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text(lastAb.toString() + ' L',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Text(
                'Media: ' + mediaCons.toStringAsPrecision(4) + ' KM/L',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ]),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
