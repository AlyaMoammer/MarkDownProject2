import 'package:flutter/material.dart';

class Class {
  static const _NAME = 'name';
  static const _CLASSID = 'classId';
  static const _LEVELID = 'levelId';

  final String name;
  final int classId;
  final int levelId;

  Class({
    @required this.name,
    @required this.classId,
    @required this.levelId,
  })  : assert(name != null),
        assert(classId != null),
        assert(levelId != null);

  factory Class.fromMap(Map<String, dynamic> map) {
    return Class(
      name: map[_NAME],
      classId: map[_CLASSID],
      levelId: map[_LEVELID],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      _NAME: name,
      _CLASSID: classId,
      _LEVELID: levelId,
    };
  }
}
