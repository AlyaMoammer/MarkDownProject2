import 'package:flutter/material.dart';
import 'package:pro/pages/adds.dart';
import 'package:pro/pages/grades.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white12,
              expandedHeight: 120.0,
              floating: false,
              pinned: true,
              title: Text(
                "Techno School ",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Pacifico',
                    fontSize: 26.0),
              ),
              leading: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100))),
                color: Colors.white,
                //elevation: 10.0,
                child: Container(
                  height: 140,
                  width: 140,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("images/techno.jpg"),
                  ),
                ),
              ),
              // actions: <Widget>[
              //   Icon(Icons.settings , color: Colors.black,),
              // ],
              elevation: 0,
              bottom: new TabBar(
                  unselectedLabelColor: Colors.white,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 228, 204, 166)),
                  controller: controller,
                  tabs: <Tab>[
                    new Tab(
                      child: new Text(
                        "Adds",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    new Tab(
                        child: new Text(
                      "Grades",
                      style: TextStyle(color: Colors.black),
                    )),
                    new Tab(
                      child: new Text(
                        "Notes",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    new Tab(
                      child: new Text(
                        "HW",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ]),
            ),
          ];
        },
        body: TabBarView(
          controller: controller,
          children: <Widget>[
            Adds(),
            Grades(),
            Icon(Icons.games),
            Icon(Icons.face),
          ],
        ),
      ),
    );
  }
}
