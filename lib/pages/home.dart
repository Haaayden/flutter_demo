import 'package:flutter/material.dart';

import './custom_route..dart';

class Home extends StatelessWidget {

  _navToPage(BuildContext context, String pageName) {
    Navigator.of(context).pushNamed(pageName);
  }

  _navCustomRoute(BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        // opaque: false,
        transitionDuration: Duration(seconds: 1),
        pageBuilder: (context, _, __) => CustomRoute(),
        transitionsBuilder: (___, Animation<double> animation, ____, Widget child) {
          return FadeTransition(
            opacity: animation,
            child: RotationTransition(
              turns: Tween<double>(begin: 0.5, end: 1.0).animate(animation),
              child: child,
            ),
          );
        },
      ),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () => _navToPage(context, '/widgetExample'),
              child: Text('组件示例'),
            ),
            RaisedButton(
              onPressed: () => _navToPage(context, '/dataTransfer'),
              child: Text('widget 通信'),
            ),
            RaisedButton(
              onPressed: () => _navCustomRoute(context),
              child: Text('自定义路由'),
            ),
            RaisedButton(
              onPressed: () => _navToPage(context, '/jsonDecode'),
              child: Text('JSON 解析'),
            ),
          ],
        ),
      ),
    );
  }
}
