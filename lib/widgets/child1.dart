import 'package:flutter/material.dart';

class Child1 extends StatelessWidget {
  final String child1Data;

  Child1({
    this.child1Data,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20),
      elevation: 4,
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('Child1', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
            subtitle: Text('接收父组件data'),
          ),
          Divider(),
          Container(
            padding: EdgeInsets.all(20),
            child: Text('child1 Data 的值: $child1Data', style: TextStyle(fontSize: 18)),
          ),
        ],
      ),
    );
  }
}
