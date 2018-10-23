import 'package:flutter/material.dart';

class RowPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () => Navigator.of(context).pop()),
        title: Text("RowPage"),
      ),
      body: new Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(child: Text("old"),color: Colors.blue,),
          Container(child: Text("yound"),color: Colors.red,),
          Container(child: Text("child"),color: Colors.amber,)
        ],
      ),
    );
  }

}