import 'package:flutter/material.dart';

class BaselinePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Baseline"),
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () => Navigator.of(context).pop()),
      ),
      body: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Baseline(
            baseline: 0.0,
            baselineType: TextBaseline.alphabetic,
            child: new Text(
              'TjTjTj',
              style: new TextStyle(
                fontSize: 20.0,
                textBaseline: TextBaseline.alphabetic,
              ),
            ),
          ),
          new Baseline(
            baseline: 50.0,
            baselineType: TextBaseline.alphabetic,
            child: new Container(
              width: 30.0,
              height: 30.0,
              color: Colors.red,
            ),
          ),
          new Baseline(
            baseline: 50.0,
            baselineType: TextBaseline.alphabetic,
            child: new Text(
              'RyRyRy',
              style: new TextStyle(
                fontSize: 35.0,
                textBaseline: TextBaseline.alphabetic,
              ),
            ),
          ),
        ],
      )
    );
  }

}