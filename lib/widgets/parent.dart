import 'package:flutter/material.dart';

import './child1.dart';
import './child2.dart';

class Parent extends StatefulWidget {
  // final Function child1;
  // Parent({
  //   this.child1,
  // });

  @override
  State<StatefulWidget> createState() => _ParentState();
}

class _ParentState extends State<Parent> {
  String parentData;

  void _onTextFieldChanged(value) {
    _updateParentData(value);
  }

  void _updateParentData(value) {
    setState(() {
      parentData = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          elevation: 4,
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('Parent', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
              ),
              Divider(),
              Container(
                padding: EdgeInsets.all(20),
                child: Text('Parent Data 的值: $parentData', style: TextStyle(fontSize: 18)),
              ),
              TextField(
                decoration: InputDecoration(fillColor: Colors.blue.shade100, filled: true, labelText: 'Parent 输入框'),
                onChanged: _onTextFieldChanged,
              ),
              Divider(),
              Child1(child1Data: parentData),
              Child2(updateParentData: _updateParentData),
            ],
          ),
        )
      ],
    );
  }
}
