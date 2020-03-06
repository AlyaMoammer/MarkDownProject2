import 'package:flutter/material.dart';

class Note {
  static const _DESCRIPTION = 'description';
  static const _NOTEID = 'noteId';
  static const _TYPE = 'type';
  static const _STUDENTID = 'studentId';
  static const _SUBJECTID = 'subjectId';
  static const _TEACHERID = 'teacherId';
  static const _PARENTID = 'parentId';

  final String description;
  final int noteId;
  final int type;
  final int studentId;
  final int subjectId;
  final int teacherId;
  final int parentId;

  Note({
    @required this.description,
    @required this.noteId,
    @required this.type,
    @required this.studentId,
    @required this.subjectId,
    @required this.teacherId,
    @required this.parentId,
  })  : assert(description != null),
        assert(noteId != null),
        assert(type != null),
        assert(studentId != null),
        assert(subjectId != null),
        assert(teacherId != null),
        assert(parentId != null);

  factory Note.fromMap(Map<String, dynamic> map) {
    return Note(
      description: map[_DESCRIPTION],
      noteId: map[_NOTEID],
      type: map[_TYPE],
      studentId: map[_STUDENTID],
      subjectId: map[_SUBJECTID],
      teacherId: map[_TEACHERID],
      parentId: map[_PARENTID],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      _DESCRIPTION: description,
      _TYPE: type,
      _NOTEID: noteId,
      _STUDENTID: studentId,
      _SUBJECTID: subjectId,
      _TEACHERID: teacherId,
      _PARENTID: parentId,
    };
  }
}
