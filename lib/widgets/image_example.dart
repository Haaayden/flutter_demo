import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  final String imgUrl;

  ImageExample({
    this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(imgUrl, fit: BoxFit.fitWidth);
  }
}
