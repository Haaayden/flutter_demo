import 'package:flutter/material.dart';

class CustomRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Route'),
      ),
      body: Center(
        child: Text('Custom Rouer', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
