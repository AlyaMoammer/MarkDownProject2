import 'package:flutter/material.dart';

class TeachersHaveSubjects {
  static const _TEACHERID = 'teacherId';
  static const _SUBJECTID = 'subjectId';

  final int teacherId;
  final int subjectId;

  TeachersHaveSubjects({
    @required this.teacherId,
    @required this.subjectId,
  })  : assert(teacherId != null),
        assert(subjectId != null);

  factory TeachersHaveSubjects.fromMap(Map<String, dynamic> map) {
    return TeachersHaveSubjects(
      teacherId: map[_TEACHERID],
      subjectId: map[_SUBJECTID],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      _TEACHERID: teacherId,
      _SUBJECTID: subjectId,
    };
  }
}
