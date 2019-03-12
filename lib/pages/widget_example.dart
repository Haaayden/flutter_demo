import 'package:flutter/material.dart';

import '../widgets/box_example.dart';
import '../widgets/text_example.dart';
import '../widgets/image_example.dart';
import '../widgets/container_example.dart';
import '../widgets/row_example.dart';
import '../widgets/stack_example.dart';

class WidgetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('组件示例'),
      ),
      body: ListView(
        children: <Widget>[
          BoxExample(title: '1. Text', childWidget: TextExample(textContent: 'Hello Flutter! Hello Flutter! Hello Flutter!'), height: 200),
          BoxExample(title: '2. Image', childWidget: ImageExample(imgUrl: 'https://i.loli.net/2019/03/07/5c80d019a6663.jpg',)),
          BoxExample(title: '3. Container', childWidget: ContainerExample()),
          BoxExample(title: '4. Row', childWidget: RowExample()),
          BoxExample(title: '5. Stack', childWidget: StackExample()),
        ],
      ),
    );
  }
}
