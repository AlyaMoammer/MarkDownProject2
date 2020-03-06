import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro/models/activity_model.dart';

List<Activity> activities = [
  Activity(
    imageUrl: 'images/techno.jpg',
    name: 'Add 1',
    date: '2/2/2020',
    detials: 'a set of mens wear comprising a suit jacket',
  ),
  Activity(
    imageUrl: 'images/techno.jpg',
    name: 'Add 2',
    date: '3/2/2020',
    detials: 'a set of mens wear comprising a suit jacket',
  ),
  Activity(
    imageUrl: 'images/techno.jpg',
    name: 'Add 3',
    date: '4/2/2020',
    detials: 'a set of mens wear comprising a suit jacket',
  ),
  Activity(
    imageUrl: 'images/techno.jpg',
    name: 'Add 4',
    date: '4/2/2020',
    detials: 'a set of mens wear comprising a suit jacket',
  )
];

class Adds extends StatefulWidget {
  Adds({Key key}) : super(key: key);

  _AddsState createState() => _AddsState();
}

class _AddsState extends State<Adds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: activities.length,
        itemBuilder: (BuildContext context, int index) {
          Activity activity = activities[index];
          return Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
                height: 130.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(100.0, 20.0, 20.0, 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          width: 120.0,
                          child: Text(
                            activity.name,
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.w600),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          )),
                      Text(
                        activity.detials,
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[700]),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width: 70.0,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        alignment: Alignment.center,
                        child: Text(activity.date),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 20.0,
                top: 15.0,
                bottom: 15.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image(
                    width: 110.0,
                    image: AssetImage(activity.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
