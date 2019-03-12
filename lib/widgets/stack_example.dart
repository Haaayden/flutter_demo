import 'package:flutter/material.dart';

class StackExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,  // 在宽度上强制撑满
      height: 300,
      child: Stack(
        children: <Widget>[
          Container(
            color: Colors.blueGrey,
            width: 100,
            height: 100,
            alignment: Alignment.center,
            child: Text('block 1 unPositioned', style: TextStyle(color: Colors.white)),
          ),
          Positioned(
            top: 80,
            left: 80,
            child: Container(
              color: Colors.pink,
              width: 100,
              height: 100,
              alignment: Alignment.center,
              child: Text('block 2 positioned', style: TextStyle(color: Colors.white)),
            ),
          ),
          Positioned(
            right: 150,
            bottom: 60,
            child: Container(
              color: Colors.teal,
              width: 100,
              height: 100,
              alignment: Alignment.center,
              child: Text('block 3 positioned', style: TextStyle(color: Colors.white),),
            ),
          ),
        ],
      ),
    );
  }
}
