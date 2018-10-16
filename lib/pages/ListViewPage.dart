import 'package:flutter/material.dart';
import 'LRPageRouteBuilder.dart' as LRPageRouteBuilder;
import 'layouts/LayoutListPage.dart';

var data = const [
  "Layout",
];

class ListViewPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ListViewState();
  }
}

class ListViewState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    //使用ListView的命名构造函数builder,因为作为一个有状态state的列表，需要根据数据的改变而改变列表的展示
    //如果ListView中的数据是固定的，建议使用ListView()构造函数，提供一个固定展示的Widget数组即可
    return new ListView.builder(
      //构建每个item的方法，类似android-adapter里的getView方法
      itemBuilder: (context, index) {
        //ListTile封装了常用的列表item-ui和支持点击事件，样式大概就是简单通讯录列表的样式
        return new ListTile(
          /// ---------------------------------------------------------------
          /// --------------                                                |
          /// |            |      title                                     |
          /// |  leading   |                                        trailing|
          /// |            |      subTitle                                  |
          /// --------------                                                |
          /// ---------------------------------------------------------------
            title: new Text(data[index]),
            onTap: () {
              switch (index) {
                case 0:
                  Navigator.of(context).push(
                      LRPageRouteBuilder.createPageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  new LayoutListPage()));
                  break;
                default:
                  break;
              }
            });
      },
      //列表数据的长度（决定列表的长度）
      itemCount: data.length,
    );
  }
}
