import 'package:flutter/material.dart';

class TeachersMakeHWs {
  static const _TEACHERID = 'teacherId';
  static const _HOMEWORKID = 'homeWorkId';

  final int teacherId;
  final int homeWorkId;

  TeachersMakeHWs({
    @required this.teacherId,
    @required this.homeWorkId,
  })  : assert(teacherId != null),
        assert(homeWorkId != null);

  factory TeachersMakeHWs.fromMap(Map<String, dynamic> map) {
    return TeachersMakeHWs(
      teacherId: map[_TEACHERID],
      homeWorkId: map[_HOMEWORKID],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      _TEACHERID: teacherId,
      _HOMEWORKID: homeWorkId,
    };
  }
}
