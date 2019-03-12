import 'package:flutter/material.dart';

import '../widgets/parent.dart';
import '../widgets/child1.dart';

class DataTransfer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('widget 通信'),
      ),
      body: Center(
        child: Parent(),
      ),
    );
  }
}
