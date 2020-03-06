import 'package:flutter/material.dart';

class Level {
  static const _NAME = 'name';
  static const _LEVELID = 'levelId';

  final String name;
  final int levelId;

  Level({
    @required this.name,
    @required this.levelId,
  })  : assert(name != null),
        assert(levelId != null);

  factory Level.fromMap(Map<String, dynamic> map) {
    return Level(
      name: map[_NAME],
      levelId: map[_LEVELID],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      _NAME: name,
      _LEVELID: levelId,
    };
  }
}
