import 'package:flutter/material.dart';

class BoxExample extends StatelessWidget {
  BoxExample({
    Key key,
    this.title,
    this.childWidget,
    this.height,
  });

  final String title;
  final Widget childWidget;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Card(
        margin: EdgeInsets.all(10),
        elevation: 4,
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text(title, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
            ),
            Divider(),
            childWidget,
          ],
        ),
      ),
    );
  }
}

// Container(
//   margin: EdgeInsets.all(10.0),
//     decoration: const BoxDecoration(
//       border: Border(
//         top: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
//         left: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
//         right: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
//         bottom: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
//       ),
//     ),
//     width: MediaQuery.of(context).size.width,
//     height: height,
//     child: childWidget,
// )
