import 'package:flutter/material.dart';
import 'package:pro/pages/homePage.dart';
import 'package:pro/pages/login.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class Splash extends StatefulWidget {
  Splash({Key key}) : super(key: key);

  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 236, 236, 236),
        body: Center(
          child: Image.asset(
            'images/techno.jpg',
            width: 300,
          ),
        ));
  }
}
