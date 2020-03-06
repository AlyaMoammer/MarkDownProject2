import 'package:flutter/material.dart';

class School {
  static const _NAME = 'name';
  static const _SCHOOLID = 'schoolId';
  static const _SUPERUSERID = 'superUserId';
  static const _LOGO = 'logo';
  static const _DETIALS = 'detials';

  final String name;
  final int schoolId;
  final int superUserId;
  final String logo;
  final String detials;

  School({
    @required this.name,
    @required this.schoolId,
    @required this.superUserId,
    @required this.logo,
    @required this.detials,
  })  : assert(name != null),
        assert(schoolId != null),
        assert(superUserId != null),
        assert(logo != null),
        assert(detials != null);

  factory School.fromMap(Map<String, dynamic> map) {
    return School(
      name: map[_NAME],
      schoolId: map[_SCHOOLID],
      superUserId: map[_SUPERUSERID],
      logo: map[_LOGO],
      detials: map[_DETIALS],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      _NAME: name,
      _SCHOOLID: schoolId,
      _SUPERUSERID: superUserId,
      _LOGO: logo,
      _DETIALS: detials,
    };
  }
}
