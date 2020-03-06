import 'package:flutter/material.dart';

class LevelsHaveHWs {
  static const _LEVELID = 'levelId';
  static const _HOMEWORKID = 'homeWorkId';

  final int levelId;
  final int homeWorkId;

  LevelsHaveHWs({
    @required this.levelId,
    @required this.homeWorkId,
  })  : assert(levelId != null),
        assert(homeWorkId != null);

  factory LevelsHaveHWs.fromMap(Map<String, dynamic> map) {
    return LevelsHaveHWs(
      levelId: map[_LEVELID],
      homeWorkId: map[_HOMEWORKID],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      _LEVELID: levelId,
      _HOMEWORKID: homeWorkId,
    };
  }
}
