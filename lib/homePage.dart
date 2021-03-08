import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var untilLastKm = 0;
  var untilLastAb = 0;
  var lastKm = 16;
  var lastAb = 1;
  var mediaCons = 0.0;
  @override
  Widget build(BuildContext context) {
    mediaCons = (lastKm - untilLastKm) / lastAb;

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('iFuel'),
        trailing: CupertinoButton(
          padding: EdgeInsets.all(5.0),
          child: Text('+ Add'),
          onPressed: () {
            Navigator.of(context).pushNamed('/addAbast');
          },
        ),
      ),
      child: SafeArea(
        child: Padding(
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
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Text(untilLastAb.toString() + ' L',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
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
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
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
      ),
    );
  }
}
