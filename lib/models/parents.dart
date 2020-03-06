import 'package:flutter/material.dart';

class Parent {
  static const _NAME = 'name';
  static const _PARENTID = 'parentId';
  static const _PASS = 'pass';
  static const _USERTYPE = 'usertype';
  static const _USERNAME = 'username';

  final String name;
  final int parentId;
  final String password;
  final int usertype;
  final String username;

  Parent({
    @required this.name,
    @required this.parentId,
    @required this.password,
    @required this.usertype,
    @required this.username,
  })  : assert(name != null),
        assert(parentId != null),
        assert(password != null),
        assert(usertype != null),
        assert(username != null);

  factory Parent.fromMap(Map<String, dynamic> map) {
    return Parent(
      name: map[_NAME],
      parentId: map[_PARENTID],
      password: map[_PASS],
      usertype: map[_USERTYPE],
      username: map[_USERNAME],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      _NAME: name,
      _PASS: password,
      _PARENTID: parentId,
      _USERTYPE: usertype,
      _USERNAME: username,
    };
  }
}
