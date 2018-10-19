import 'package:flutter/material.dart';

class CenterPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("CenterPage"),
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () => Navigator.of(context).pop()),
      ),
      body: new Center(
        widthFactor: 1.0,
        heightFactor: 100.0,
        child: Text("i am text!"),
      ),
    );
  }

}