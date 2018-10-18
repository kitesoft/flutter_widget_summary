import 'package:flutter/material.dart';

import 'LRPageRouteBuilder.dart' as LRPageRouteBuilder;
import 'layouts/ContainerPage.dart';

class LayoutListPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        //标题控件,可自定义标题位置的ui
        title: Text("Layouts目录"),
        leading: IconButton(icon: const Icon(Icons.arrow_back), onPressed: (){
          Navigator.of(context).pop();
        }),
      ),
      body: ListView(
        children: <Widget>[
          new GestureDetector(child: new ListTile(title: new Text("Container"),),onTap: (){
            Navigator.of(context).push(LRPageRouteBuilder.createPageRouteBuilder(pageBuilder: (context,anim1,anim2){
              return new ContainerPage();
            }));
          },),

        ],
      ),
    );
  }

}