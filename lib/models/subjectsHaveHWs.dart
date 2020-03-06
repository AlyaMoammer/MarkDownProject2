import 'package:flutter/material.dart';

class SubjectsHaveHWs {
  static const _SUBJECTID = 'subjectId';
  static const _HOMEWORKID = 'homeWorkId';

  final int subjectId;
  final int homeWorkId;

  SubjectsHaveHWs({
    @required this.subjectId,
    @required this.homeWorkId,
  })  : assert(subjectId != null),
        assert(homeWorkId != null);

  factory SubjectsHaveHWs.fromMap(Map<String, dynamic> map) {
    return SubjectsHaveHWs(
      subjectId: map[_SUBJECTID],
      homeWorkId: map[_HOMEWORKID],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      _SUBJECTID: subjectId,
      _HOMEWORKID: homeWorkId,
    };
  }
}
