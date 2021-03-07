import 'package:flutter/cupertino.dart';

class AddAbast extends StatefulWidget {
  @override
  _AddAbastState createState() => _AddAbastState();
}

class _AddAbastState extends State<AddAbast> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Novo Abastecimento'),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Km:'),
                CupertinoTextField(),
                Text('Volume:'),
                CupertinoTextField(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
