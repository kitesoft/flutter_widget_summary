import 'package:flutter/material.dart';

class AlignPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("CenterPage"),
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () => Navigator.of(context).pop()),
      ),
      body: new Align(
        widthFactor: 1.0,
        heightFactor: 100.0,
        alignment: Alignment.bottomLeft,
        child: Text("i am text!"),
      ),
    );
  }

}