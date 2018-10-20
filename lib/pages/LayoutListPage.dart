import 'package:flutter/material.dart';

import 'LRPageRouteBuilder.dart' as LRPageRouteBuilder;
import 'layouts/AlignPage.dart';
import 'layouts/AspectRatioPage.dart';
import 'layouts/BaselinePage.dart';
import 'layouts/CenterPage.dart';
import 'layouts/ConstrainedBoxPage.dart';
import 'layouts/ContainerPage.dart';
import 'layouts/FittedBoxPage.dart';
import 'layouts/OffstagePage.dart';
import 'layouts/OverflowBoxPage.dart';
import 'layouts/PaddingPage.dart';

class LayoutListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        //标题控件,可自定义标题位置的ui
        title: Text("Layouts目录"),
        leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            }),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
              title: new Text("Container"),
              onTap: () {
                Navigator.of(context).push(
                    LRPageRouteBuilder.createPageRouteBuilder(
                        pageBuilder: (context, anim1, anim2) {
                  return new ContainerPage();
                }));
              }),
          ListTile(
            title: Text("Center"),
            onTap: () {
              Navigator.of(context).push(
                  LRPageRouteBuilder.createPageRouteBuilder(
                      pageBuilder: (context, anim1, anim2) {
                return new CenterPage();
              }));
            },
          ),
          ListTile(
            title: Text("Padding"),
            onTap: () {
              Navigator.of(context).push(
                  LRPageRouteBuilder.createPageRouteBuilder(
                      pageBuilder: (context, anim1, anim2) {
                        return new PaddingPage();
                      }));
            },
          ),
          ListTile(
            title: Text("Align"),
            onTap: () {
              Navigator.of(context).push(
                  LRPageRouteBuilder.createPageRouteBuilder(
                      pageBuilder: (context, anim1, anim2) {
                        return new AlignPage();
                      }));
            },
          ),
          ListTile(
            title: Text("FittedBox"),
            onTap: () {
              Navigator.of(context).push(
                  LRPageRouteBuilder.createPageRouteBuilder(
                      pageBuilder: (context, anim1, anim2) {
                        return new FittedBoxPage();
                      }));
            },
          ),
          ListTile(
            title: Text("AspectRatio"),
            onTap: () {
              Navigator.of(context).push(
                  LRPageRouteBuilder.createPageRouteBuilder(
                      pageBuilder: (context, anim1, anim2) {
                        return new AspectRatioPage();
                      }));
            },
          ),
          ListTile(
            title: Text("ConstrainedBox"),
            onTap: () {
              Navigator.of(context).push(
                  LRPageRouteBuilder.createPageRouteBuilder(
                      pageBuilder: (context, anim1, anim2) {
                        return new ConstrainedBoxPage();
                      }));
            },
          ),
          ListTile(
            title: Text("Baseline"),
            onTap: () {
              Navigator.of(context).push(
                  LRPageRouteBuilder.createPageRouteBuilder(
                      pageBuilder: (context, anim1, anim2) {
                        return new BaselinePage();
                      }));
            },
          ),
          ListTile(
            title: Text("Offstage"),
            onTap: () {
              Navigator.of(context).push(
                  LRPageRouteBuilder.createPageRouteBuilder(
                      pageBuilder: (context, anim1, anim2) {
                        return new OffstagePage();
                      }));
            },
          ),
          ListTile(
            title: Text("OverflowBox"),
            onTap: () {
              Navigator.of(context).push(
                  LRPageRouteBuilder.createPageRouteBuilder(
                      pageBuilder: (context, anim1, anim2) {
                        return new OverflowBoxPage();
                      }));
            },
          )
        ],
      ),
    );
  }
}
