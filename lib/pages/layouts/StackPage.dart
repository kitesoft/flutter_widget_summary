import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop()),
        title: Text("StackPage"),
      ),
      body: new Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/lady_1.jpeg"), fit: BoxFit.cover
              ),
              shape: BoxShape.circle,
            ),
          ),
          Icon(
            Icons.add,
            size: 50.0,
          ),
        ],
      ),
    );
  }
}
