import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddAbast extends StatefulWidget {
  @override
  _AddAbastState createState() => _AddAbastState();
}

class _AddAbastState extends State<AddAbast> {
  final TextEditingController _controladorKM = TextEditingController();
  final TextEditingController _controladorVolume = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CupertinoButton(
                  padding: EdgeInsets.all(0),
                  child: Text('Cancelar'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 15.0),
                  child: Container(
                    height: 8.0,
                    width: 8.0,
                  ),
                ),
              ]),
          middle: Text('Novo Abastecimento'),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Km:'),
                CupertinoTextField(
                  controller: _controladorKM,
                  keyboardType: TextInputType.number,
                ),
                Text('Volume:'),
                CupertinoTextField(
                  controller: _controladorVolume,
                  keyboardType: TextInputType.number,
                ),
                Center(
                    child: CupertinoButton(
                        child: Text('Salvar'),
                        onPressed: () {
                          Navigator.pop(context, _controladorKM.text);
                          //Navigator.pop(context);
                        })),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
