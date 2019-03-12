import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  TextExample({
    Key key,
    this.textContent,
  });

  final String textContent;

  @override
  Widget build(BuildContext context) {
    return Text(
      textContent,
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
