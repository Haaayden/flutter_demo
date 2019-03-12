// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_model_auto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StudentAuto _$StudentAutoFromJson(Map<String, dynamic> json) {
  return StudentAuto(
      studentId: json['id'] as String,
      studentName: json['name'] as String,
      studentScores: json['scores'] as int);
}

Map<String, dynamic> _$StudentAutoToJson(StudentAuto instance) =>
    <String, dynamic>{
      'id': instance.studentId,
      'name': instance.studentName,
      'scores': instance.studentScores
    };
