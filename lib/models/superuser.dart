import 'package:flutter/material.dart';

class SuperUser {
  static const _NAME = 'name';
  static const _SUPERUSERID = 'superUserId';
  static const _PASS = 'pass';
  static const _USERTYPE = 'usertype';
  static const _USERNAME = 'username';

  final String name;
  final int superUserId;
  final String password;
  final int usertype;
  final String username;

  SuperUser({
    @required this.name,
    @required this.superUserId,
    @required this.password,
    @required this.usertype,
    @required this.username,
  })  : assert(name != null),
        assert(superUserId != null),
        assert(password != null),
        assert(usertype != null),
        assert(username != null);

  factory SuperUser.fromMap(Map<String, dynamic> map) {
    return SuperUser(
      name: map[_NAME],
      superUserId: map[_SUPERUSERID],
      password: map[_PASS],
      usertype: map[_USERTYPE],
      username: map[_USERNAME],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      _NAME: name,
      _PASS: password,
      _SUPERUSERID: superUserId,
      _USERTYPE: usertype,
      _USERNAME: username,
    };
  }
}
