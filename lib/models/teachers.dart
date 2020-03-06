import 'package:flutter/material.dart';

class Teacher {
  static const _NAME = 'name';
  static const _TEACHERID = 'teacherId';
  static const _PASS = 'pass';
  static const _USERTYPE = 'usertype';
  static const _USERNAME = 'username';

  final String name;
  final int teacherId;
  final String password;
  final int usertype;
  final String username;

  Teacher({
    @required this.name,
    @required this.teacherId,
    @required this.password,
    @required this.usertype,
    @required this.username,
  })  : assert(name != null),
        assert(teacherId != null),
        assert(password != null),
        assert(usertype != null),
        assert(username != null);

  factory Teacher.fromMap(Map<String, dynamic> map) {
    return Teacher(
      name: map[_NAME],
      teacherId: map[_TEACHERID],
      password: map[_PASS],
      usertype: map[_USERTYPE],
      username: map[_USERNAME],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      _NAME: name,
      _PASS: password,
      _TEACHERID: teacherId,
      _USERTYPE: usertype,
      _USERNAME: username,
    };
  }
}
