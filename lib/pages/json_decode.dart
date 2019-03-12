import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

import '../model/student_model.dart';
import '../model/student_model_auto.dart';

class JsonDecode extends StatelessWidget {
  Future<String>  _loadJsonFile() async {
    return await rootBundle.loadString('lib/mock/mock.json');
  }

  Future loadStudent() async {
    String jsonString = await _loadJsonFile();
    final jsonRes = json.decode(jsonString);
    Student student = new Student.fromJson(jsonRes);

    print(student.studentName);
    print(student);
    print(jsonString);
    print(jsonRes);
    print(jsonRes['name']);
  }

  Future loadStudentAuto() async {
    String jsonString = await _loadJsonFile();
    final jsonRes = json.decode(jsonString);
    StudentAuto student = StudentAuto.fromJson(jsonRes);

    print(student.studentName);
    print(student);
    print(jsonString);
    print(jsonRes);
    print(jsonRes['name']);
  }


  @override
  Widget build(BuildContext context) {
    loadStudentAuto();

    return Scaffold(
      appBar: AppBar(
        title: Text('JSON 解析'),
      ),
      body: Center(
        child: Text('请在控制台中查看打印', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24)),
      ),
    );
  }
}
