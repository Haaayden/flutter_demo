import 'package:flutter/material.dart';

class RowExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          width: 80,
          height: 100,
          color: Colors.blueGrey,
          child: Center(
            child: Text('block 1'),
          ),
        ),
        Container(
          width: 100,
          height: 180,
          color: Colors.pink,
          child: Center(
            child: Text('block 2'),
          ),
        ),
        Container(
          width: 80,
          height: 140,
          color: Colors.teal,
          child: Center(
            child: Text('block 3'),
          ),
        ),
      ],
    );
  }
}
