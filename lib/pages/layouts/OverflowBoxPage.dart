import 'package:flutter/material.dart';

class OverflowBoxPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AlignPage"),
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () => Navigator.of(context).pop()),
      ),
      body: Container(
        color: Colors.green,
        width: 200.0,
        height: 200.0,
        padding: const EdgeInsets.all(5.0),
        child: OverflowBox(
          alignment: Alignment.topLeft,
          maxWidth: 300.0,
          maxHeight: 500.0,
          child: Container(
            color: Color(0x33FF00FF),
            width: 300.0,
            height: 300.0,
          ),
        ),
      ),
    );

  }

}