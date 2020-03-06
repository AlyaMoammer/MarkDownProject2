import 'package:flutter/material.dart';

class Mark {
  static const _MARKID = 'markId';
  static const _FIRSTMONTH = 'firstMonth';
  static const _SECONDTHIRD = 'secondThird';
  static const _MIDMARK = 'midMark';
  static const _FINALMARK = 'finalMark';
  static const _STUDENTID = 'studentId';
  static const _SUPERUSERID = 'superUserId';

  final int markId;
  final int firstMonth;
  final int secondThird;
  final int midMark;
  final int finalMark;
  final int studentId;
  final int superUserId;

  Mark({
    @required this.markId,
    @required this.firstMonth,
    @required this.secondThird,
    @required this.midMark,
    @required this.finalMark,
    @required this.studentId,
    @required this.superUserId,
  })  : assert(markId != null),
        assert(firstMonth != null),
        assert(secondThird != null),
        assert(midMark != null),
        assert(finalMark != null),
        assert(studentId != null),
        assert(superUserId != null);

  factory Mark.fromMap(Map<String, dynamic> map) {
    return Mark(
      markId: map[_MARKID],
      firstMonth: map[_FIRSTMONTH],
      secondThird: map[_SECONDTHIRD],
      midMark: map[_MIDMARK],
      finalMark: map[_FINALMARK],
      studentId: map[_STUDENTID],
      superUserId: map[_SUPERUSERID],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      _MARKID: markId,
      _FIRSTMONTH: firstMonth,
      _SECONDTHIRD: secondThird,
      _MIDMARK: midMark,
      _FINALMARK: finalMark,
      _STUDENTID: studentId,
      _SUPERUSERID: superUserId,
    };
  }
}
