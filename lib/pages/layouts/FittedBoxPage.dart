import 'package:flutter/material.dart';

class FittedBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.of(context).pop()),
          title: Text("FittedBoxPage"),
        ),
        body: new Container(
          width: 100.0,
          height: 100.0,
          child: new FittedBox(
            child: Text("padding is 10dp"),
            fit: BoxFit.fitWidth,
            alignment: Alignment.topLeft,
          ),
        ));
  }
}
