import 'package:flutter/material.dart';

class Child2 extends StatefulWidget {

  final Function updateParentData;

  Child2({
    this.updateParentData,
  });

  @override
  State<StatefulWidget> createState() => _Child2State();

}

class _Child2State extends State<Child2> {
  String child2Data;

  void _onTextFieldChanged(value) {
    setState(() {
      child2Data = value;
      widget.updateParentData(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20),
      elevation: 4,
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('Child2', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
            subtitle: Text('通过回调传递data到父组件'),
          ),
          Divider(),
          Container(
            padding: EdgeInsets.all(20),
            child: Text('child2 Data 的值: $child2Data', style: TextStyle(fontSize: 18)),
          ),
          Divider(),
          TextField(
            decoration: InputDecoration(fillColor: Colors.blue.shade100, filled: true, labelText: 'Child2 输入框'),
            onChanged: _onTextFieldChanged,
          ),
        ],
      ),
    );
  }
}
