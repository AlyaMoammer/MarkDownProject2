import 'package:flutter/material.dart';

class HW {
  static const _DESCRIPTION = 'description';
  static const _HOMEWORKID = 'homeWorkId';
  static const _SUBJECT = 'subject';

  final String description;
  final int homeWorkId;
  final String subject;

  HW({
    @required this.description,
    @required this.homeWorkId,
    @required this.subject,
  })  : assert(description != null),
        assert(homeWorkId != null),
        assert(subject != null);

  factory HW.fromMap(Map<String, dynamic> map) {
    return HW(
      description: map[_DESCRIPTION],
      homeWorkId: map[_HOMEWORKID],
      subject: map[_SUBJECT],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      _DESCRIPTION: description,
      _HOMEWORKID: homeWorkId,
      _SUBJECT: subject,
    };
  }
}
