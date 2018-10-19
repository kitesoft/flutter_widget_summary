import 'package:flutter/material.dart';

class AspectRatioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("AspectRatioPage"),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.of(context).pop()),
        ),
        body: Container(
          color: Colors.blue,
          height: 100.0,
          child: AspectRatio(
            aspectRatio: 16.0 / 9.0,
            child: Container(
              child: Text("AspectRatio"),
              color: Colors.red,
            ),
          ),
        ));
  }
}
