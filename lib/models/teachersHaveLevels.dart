import 'package:flutter/material.dart';

class TeachersHaveLevels {
  static const _TEACHERID = 'teacherId';
  static const _LEVELID = 'levelId';

  final int teacherId;
  final int levelId;

  TeachersHaveLevels({
    @required this.teacherId,
    @required this.levelId,
  })  : assert(teacherId != null),
        assert(levelId != null);

  factory TeachersHaveLevels.fromMap(Map<String, dynamic> map) {
    return TeachersHaveLevels(
      teacherId: map[_TEACHERID],
      levelId: map[_LEVELID],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      _TEACHERID: teacherId,
      _LEVELID: levelId,
    };
  }
}
