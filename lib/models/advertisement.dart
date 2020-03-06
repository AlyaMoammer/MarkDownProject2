import 'package:flutter/material.dart';

class Advertisement {
  static const _ADDID = 'addId';
  static const _SUPERUSERID = 'superUserId';
  static const _ADDTITLE = 'addTitle';
  static const _ADDTIME = 'addTime';
  static const _ADDIMAGE = 'addImage';
  static const _DESCRIPTION = 'description';

  final int addId;
  final int superUserId;
  final String addTitle;
  final String addTime;
  final String addImage;
  final String description;

  Advertisement({
    @required this.addId,
    @required this.superUserId,
    @required this.addTitle,
    @required this.addTime,
    @required this.addImage,
    @required this.description,
  })  : assert(addId != null),
        assert(superUserId != null),
        assert(addTitle != null),
        assert(addTime != null),
        assert(addImage != null),
        assert(description != null);

  factory Advertisement.fromMap(Map<String, dynamic> map) {
    return Advertisement(
      addId: map[_ADDID],
      superUserId: map[_SUPERUSERID],
      addTitle: map[_ADDTITLE],
      addTime: map[_ADDTIME],
      addImage: map[_ADDIMAGE],
      description: map[_DESCRIPTION],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      _ADDID: addId,
      _SUPERUSERID: superUserId,
      _ADDTITLE: addTitle,
      _ADDTIME: addTime,
      _ADDIMAGE: addImage,
      _DESCRIPTION: description,
    };
  }
}
