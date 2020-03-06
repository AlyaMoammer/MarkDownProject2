import 'package:flutter/material.dart';

class Student {
  static const _NAME = 'name';
  static const _USERNAME = 'username';
  static const _PASS = 'pass';
  static const _USERTYPE = 'usertype';
  static const _STUDENTID = 'studentId';
  static const _PARENTID = 'parentId';
  static const _LEVELID = 'levelId';

  final String name;
  final String username;
  final String password;
  final int usertype;
  final int studentId;
  final int parentId;
  final int levelId;

  Student({
    @required this.name,
    @required this.username,
    @required this.password,
    @required this.usertype,
    @required this.studentId,
    @required this.parentId,
    @required this.levelId,
  })  : assert(name != null),
        assert(username != null),
        assert(password != null),
        assert(usertype != null),
        assert(studentId != null),
        assert(parentId != null),
        assert(levelId != null);

  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      name: map[_NAME],
      username: map[_USERNAME],
      password: map[_PASS],
      usertype: map[_USERTYPE],
      studentId: map[_STUDENTID],
      parentId: map[_PARENTID],
      levelId: map[_LEVELID],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      _NAME: name,
      _USERNAME: username,
      _PASS: password,
      _USERTYPE: usertype,
      _STUDENTID: studentId,
      _PARENTID: parentId,
      _LEVELID: levelId,
    };
  }
}
