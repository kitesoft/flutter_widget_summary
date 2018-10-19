import 'package:flutter/material.dart';

class ConstrainedBoxPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("ConstrainedBoxPage"),
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () => Navigator.of(context).pop()),
      ),
      body: new ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 10.0,
          minHeight: 10.0,
          maxWidth: 50.0,
          maxHeight: 50.0,
        ),
        child: new Container(
          width: 200.0,
          height: 200.0,
          color: Colors.red,
        ),
      )
    );
  }

}