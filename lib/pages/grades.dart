import 'package:flutter/material.dart';

class Grades extends StatefulWidget {
  Grades({Key key}) : super(key: key);

  _GradesState createState() => _GradesState();
}

class _GradesState extends State<Grades> {
  Widget bodyData() => DataTable(
        columns: <DataColumn>[
          DataColumn(
            label: Text("Name"),
            numeric: false,
            onSort: (i, b) {},
            tooltip: 'to display the name',
          )
        ],
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
