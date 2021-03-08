import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

var untilLastKm = 0;
var untilLastAb = 0;
var lastKm = 16;
var lastAb = 1;
var mediaCons = 0.0;
var result;

class _HomePageState extends State<HomePage> {
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
            _awaitReturnValueFromSecondScreen(context);
            setState(() {
              //OS DADOS AINDA NAO AUALIZAM DIRETAMENTE
              untilLastKm = untilLastKm;
              untilLastAb = untilLastAb;
              lastKm = lastKm;
              lastAb = lastAb;
            });
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

void _awaitReturnValueFromSecondScreen(BuildContext context) async {
  // start the SecondScreen and wait for it to finish with a result
  result = await Navigator.of(context).pushNamed('/addAbast');
  print(result);
  untilLastKm = lastKm;
  untilLastAb = lastAb;
  if (result != null) {
    lastKm = int.parse(result);
  }
  // after the SecondScreen result comes back update the Text widget with it
}
