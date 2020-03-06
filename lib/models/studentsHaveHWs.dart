import 'package:flutter/material.dart';

class StudentsHaveHWs {
  static const _STUDENTID = 'studentId';
  static const _HOMEWORKID = 'homeWorkId';

  final int studentId;
  final int homeWorkId;

  StudentsHaveHWs({
    @required this.studentId,
    @required this.homeWorkId,
  })  : assert(studentId != null),
        assert(homeWorkId != null);

  factory StudentsHaveHWs.fromMap(Map<String, dynamic> map) {
    return StudentsHaveHWs(
      studentId: map[_STUDENTID],
      homeWorkId: map[_HOMEWORKID],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      _STUDENTID: studentId,
      _HOMEWORKID: homeWorkId,
    };
  }
}
