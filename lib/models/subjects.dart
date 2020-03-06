import 'package:flutter/material.dart';

class Subject {
  static const _NAME = 'name';
  static const _SUBJECTID = 'subjectId';

  final String name;
  final int subjectId;

  Subject({
    @required this.name,
    @required this.subjectId,
  })  : assert(name != null),
        assert(subjectId != null);

  factory Subject.fromMap(Map<String, dynamic> map) {
    return Subject(
      name: map[_NAME],
      subjectId: map[_SUBJECTID],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      _NAME: name,
      _SUBJECTID: subjectId,
    };
  }
}
