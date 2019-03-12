import 'package:flutter/material.dart';

import './pages/home.dart';
import './pages/widget_example.dart';
import './pages/data_transfer.dart';
import './pages/json_decode.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Home(),
      // initialRoute: '/',
      routes: <String, WidgetBuilder>{
        // '/': (BuildContext context) => Home(),
        '/widgetExample': (BuildContext context) => WidgetExample(),
        '/dataTransfer': (BuildContext context) => DataTransfer(),
        '/jsonDecode': (BuildContext context) => JsonDecode(),
      },
    );
  }
}
