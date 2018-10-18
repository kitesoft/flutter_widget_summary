import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'docs/ContainerDoc.dart';
///see[ContainerDoc]
class ContainerPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () => Navigator.of(context).pop()),
        title: Text("Container"),
      ),
      body: new Container(
        padding: EdgeInsets.all(ScreenUtil.instance.setHeight(100)),
        color: Colors.red,
        margin: EdgeInsets.all(ScreenUtil.instance.setHeight(20)),
        constraints: new BoxConstraints.expand(
          height:200.0,
        ),
        child: new Container(
          child: new Text("I am container's child"),
          alignment: Alignment.center,
          width: ScreenUtil.screenWidth,
          height: ScreenUtil.screenHeight,
          transform: Matrix4.rotationZ(0.1),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.blue,
              borderRadius: new BorderRadius.all(new Radius.circular(20.0))),),
      ),
    );
  }

}