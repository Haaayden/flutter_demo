import 'package:json_annotation/json_annotation.dart';
part 'student_model_auto.g.dart';

@JsonSerializable()
class StudentAuto {
  @JsonKey(name: 'id')
  String studentId;
  @JsonKey(name: 'name')
  String studentName;
  @JsonKey(name: 'scores')
  int studentScores;

  StudentAuto({
    this.studentId,
    this.studentName,
    this.studentScores,
  });

  factory StudentAuto.fromJson(Map<String, dynamic> json) => _$StudentAutoFromJson(json);
  Map<String, dynamic> toJson() => _$StudentAutoToJson(this);
}
