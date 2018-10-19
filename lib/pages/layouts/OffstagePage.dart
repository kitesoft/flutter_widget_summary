import 'package:flutter/material.dart';

class OffstagePage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return OffstageState();
  }

}

class OffstageState extends State<OffstagePage>{
  bool b = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("AlignPage"),
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () => Navigator.of(context).pop()),
      ),
      body: Column(
        children: <Widget>[
          Offstage(offstage: b,child: Container(width: 100.0,height: 100.0,color: Colors.blue,),),
          RaisedButton(onPressed: () {
            setState(() {
              b = !b;
            });
          },child: Text("switch"),)
        ],
      ),
    );
  }

}