import 'package:flutter/material.dart';

///封装PageRouteBuilder，方便统一页面跳转动画（左右平移）
PageRouteBuilder createPageRouteBuilder({
  RouteSettings settings,
  @required RoutePageBuilder pageBuilder,
  bool opaque = true,
  bool barrierDismissible = false,
  Color barrierColor,
  String barrierLabel,
  bool maintainState = true,
}){
  return PageRouteBuilder(settings: settings,
      pageBuilder: pageBuilder,
      transitionDuration: Duration(milliseconds: 200),
      transitionsBuilder: (context, animation, animation2, child) {
        return SlideTransition(
            position: new Tween<Offset>(
                begin: const Offset(1.0, 0.0),
                end: const Offset(0.0, 0.0))
                .animate(animation),
            child: SlideTransition(
              position: new Tween<Offset>(
                  begin: const Offset(0.0, 0.0),
                  end: const Offset(-1.0, 0.0))
                  .animate(animation2),
              child: child,
            )
        );
      },
      opaque: opaque,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      barrierLabel: barrierLabel,
      maintainState: maintainState);

}

