import 'package:flutter/material.dart';

class AddAbast extends StatefulWidget {
  @override
  _AddAbastState createState() => _AddAbastState();
}

class _AddAbastState extends State<AddAbast> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Novo Abastecimento'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Km:'),
              TextField(),
              Text('Volume:'),
              TextField(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            SimpleDialog(
              title: const Text('Select assignment'),
              children: <Widget>[
                SimpleDialogOption(
                  onPressed: () {},
                  child: const Text('Treasury department'),
                ),
                SimpleDialogOption(
                  onPressed: () {},
                  child: const Text('State department'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
