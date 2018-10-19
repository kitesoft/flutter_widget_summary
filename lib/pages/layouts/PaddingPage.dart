import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaddingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () => Navigator.of(context).pop()),
        title: Text("PaddingPage"),
      ),
      body: new Padding(
        padding: EdgeInsets.all(ScreenUtil.instance.setWidth(10)),
        child: Text("padding is 10dp"),
      ),
    );
  }

}